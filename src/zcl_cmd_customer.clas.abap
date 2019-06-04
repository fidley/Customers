class zcl_cmd_customer definition
  public
  create public .

  public section.

    data customer type kna1-kunnr read-only .
    data mode type zcl_cmd_util=>t_mode .
    data central type ref to zcl_cmd_central .
    data address type ref to zcl_cmd_address .
    data vat type ref to zcl_cmd_vat .
    data texts type ref to zcl_cmd_texts .
    data tax_indicator type ref to zcl_cmd_tax_ind .

    methods constructor
      importing
        value(i_customer) type kna1-kunnr optional
      raising
        zcx_cmd_customer .
    "! Gets all customer data from DB and store it in CMD_EI_API structure
    methods get_data
      importing
        !i_reread_db         type abap_bool default abap_true
      returning
        value(r_master_data) type cmds_ei_extern
      raising
        zcx_cmd_customer .
    methods save
      importing
        !i_test_run          type abap_bool default abap_false
        !i_wait_after_commit type abap_bool default abap_false
      exporting
        !e_customer          type kna1-kunnr
      returning
        value(r_master_data) type cmds_ei_extern
      raising
        zcx_cmd_customer .
    "! If you'd like to fill all data by yourself.
    methods set_master_data
      importing
        !i_master_data type cmds_ei_extern .
    methods add_new_contact
      returning
        value(r_contact) type ref to zcl_cmd_contact .
    methods change_contact
      importing
        value(i_contact) type knvp-parnr
      returning
        value(r_contact) type ref to zcl_cmd_contact
      raising
        zcx_cmd_customer .
    methods get_contact
      importing
        value(i_contact) type knvp-parnr
      returning
        value(r_contact) type ref to zcl_cmd_contact
      raising
        zcx_cmd_customer .
    methods get_contact_by_name
      importing
        value(i_firstname) type bapiad3vl-firstname
        value(i_lastname)  type bapiad3vl-lastname
      returning
        value(r_contact)   type ref to zcl_cmd_contact
      raising
        zcx_cmd_customer .
    "! @parameter i_contact |
    "! @parameter i_raise_error | Default set to False, as if contact does not exists then it's no problem that it cannot be deleted
    "! @parameter r_contact |
    "! @raising zcx_cmd_customer |
    methods delete_contact
      importing
        value(i_contact)     type knvp-parnr
        value(i_raise_error) type abap_bool default abap_false
      returning
        value(r_contact)     type ref to zcl_cmd_contact
      raising
        zcx_cmd_customer .
    methods change_sales_org
      importing
        value(i_sales_org)     type vkorg
        value(i_distr_channel) type vtweg
        value(i_division)      type spart
      returning
        value(r_sales)         type ref to zcl_cmd_sales
      raising
        zcx_cmd_customer .
    methods create_sales_org
      importing
        value(i_sales_org)     type vkorg
        value(i_distr_channel) type vtweg
        value(i_division)      type spart
      returning
        value(r_sales)         type ref to zcl_cmd_sales
      raising
        zcx_cmd_customer .
    methods delete_sales_org
      importing
        value(i_sales_org)     type vkorg
        value(i_distr_channel) type vtweg
        value(i_division)      type spart
      returning
        value(r_sales)         type ref to zcl_cmd_sales
      raising
        zcx_cmd_customer .
    methods get_sales_org
      importing
        value(i_sales_org)     type vkorg
        value(i_distr_channel) type vtweg
        value(i_division)      type spart
      returning
        value(r_sales)         type ref to zcl_cmd_sales
      raising
        zcx_cmd_customer .
    methods change_company
      importing
        value(i_company_code) type bukrs
      returning
        value(r_company)      type ref to zcl_cmd_company
      raising
        zcx_cmd_customer .
    methods create_company
      importing
        value(i_company_code) type bukrs
      returning
        value(r_company)      type ref to zcl_cmd_company
      raising
        zcx_cmd_customer .
    methods delete_company
      importing
        value(i_company_code) type bukrs
      returning
        value(r_company)      type ref to zcl_cmd_company
      raising
        zcx_cmd_customer .
    methods get_company
      importing
        value(i_company_code) type bukrs
      returning
        value(r_company)      type ref to zcl_cmd_company
      raising
        zcx_cmd_customer .
  protected section.
    data: master_data type cmds_ei_extern.
    methods: lock raising zcx_cmd_customer.
    methods: unlock raising zcx_cmd_customer.
  private section.

    data: "! Kept only when get_data is used to be able to compare later new and old data
          original_data type cmds_ei_extern.


ENDCLASS.



CLASS ZCL_CMD_CUSTOMER IMPLEMENTATION.


  method add_new_contact.
    try.
        r_contact = new zcl_cmd_contact( i_customer = customer ).
        insert initial line into table master_data-central_data-contact-contacts reference into data(cont).
        if sy-subrc eq 0.
          r_contact->set_data( cont ).
        endif.
      catch zcx_cmd_customer.
        "In case of new contact there should not be any error here
    endtry.
  endmethod.


  method change_company.

    assign master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] to field-symbol(<company>).
    if sy-subrc eq 0.
      r_company = new zcl_cmd_company( ).
      r_company->set_data( ref #( <company> ) ).
      r_company->set_task( zcl_cmd_util=>mode-change ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 013
          v1 = conv #( i_company_code ).
    endif.

  endmethod.


  method change_contact.
    check i_contact is not initial.
    try.
        r_contact = new zcl_cmd_contact( i_customer = customer
                                              i_contact  = i_contact ).
        assign master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] to field-symbol(<cont>).
        if sy-subrc eq 0.
          r_contact->set_data( ref #( <cont> ) ).
          r_contact->set_mode( zcl_cmd_util=>mode-change ).
        endif.

      catch zcx_cmd_customer into data(e).
        "Contact doesn't exists
        raise exception type zcx_cmd_customer
          exporting
            id = e->if_t100_message~t100key-msgid
            no = e->if_t100_message~t100key-msgno
            v1 = e->if_t100_message~t100key-attr1
            v2 = e->if_t100_message~t100key-attr2
            v3 = e->if_t100_message~t100key-attr3
            v4 = e->if_t100_message~t100key-attr4.
    endtry.

  endmethod.


  method change_sales_org.
    assign master_data-sales_data-sales[ data_key-vkorg = i_sales_org
                                         data_key-vtweg = i_distr_channel
                                         data_key-spart = i_division
                                                                      ] to field-symbol(<sales>).
    if sy-subrc eq 0.
      r_sales = new zcl_cmd_sales( ).
      r_sales->set_data( ref #( <sales> ) ).
      r_sales->set_task( zcl_cmd_util=>mode-change ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 005
          v1 = conv #( customer )
          v2 = conv #( i_sales_org )
          v3 = conv #( i_distr_channel )
          v4 = conv #( i_division ).
    endif.
  endmethod.


  method constructor.
    customer = i_customer.
    if customer is initial or customer co '0'.
      mode = zcl_cmd_util=>mode-create.
      master_data-header-object_task = zcl_cmd_util=>mode-create.
    else.
      select single kunnr into @customer
          from kna1
          where kunnr eq @customer.
      if sy-subrc ne 0.
        raise exception type zcx_cmd_customer exporting no = 001 v1 = conv #( customer ).
      endif.
      get_data( ).
    endif.
    central = new zcl_cmd_central( i_data = ref #( master_data-central_data-central-data )
                                        i_datax = ref #( master_data-central_data-central-datax ) ).
    address = new zcl_cmd_address( ).
    address->set_data( ref #( master_data-central_data-address ) ).
    texts = new zcl_cmd_texts( ref #( master_data-central_data-text )  ).
    vat   = new zcl_cmd_vat( ref #( master_data-central_data-vat_number ) ).
    tax_indicator = new zcl_cmd_tax_ind(  ref #( master_data-central_data-tax_ind ) ).
  endmethod.


  method create_company.

    assign master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] to field-symbol(<company>).
    if sy-subrc ne 0.
      insert value #( task = zcl_cmd_util=>mode-create
                      data_key-bukrs = i_company_code
                    ) into table master_data-company_data-company reference into data(company).
      if sy-subrc eq 0.
        r_company = new zcl_cmd_company( ).
        r_company->set_data( company ).
      endif.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 014
          v1 = conv #( i_company_code ).
    endif.

  endmethod.


  method create_sales_org.
    assign master_data-sales_data-sales[ data_key-vkorg = i_sales_org
                                         data_key-vtweg = i_distr_channel
                                         data_key-spart = i_division
                                                                      ] to field-symbol(<sales>).
    if sy-subrc ne 0.
      r_sales = new zcl_cmd_sales( ).
      insert value #( data_key-vkorg = i_sales_org
                      data_key-vtweg = i_distr_channel
                      data_key-spart = i_division
                     ) into table master_data-sales_data-sales reference into data(sales).
      if sy-subrc eq 0.
        r_sales->set_data( sales ).
        r_sales->set_task( zcl_cmd_util=>mode-create ).
      endif.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 006
          v1 = conv #( customer )
          v2 = conv #( i_sales_org )
          v3 = conv #( i_distr_channel )
          v4 = conv #( i_division ).
    endif.
  endmethod.


  method delete_company.

    assign master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                      ] to field-symbol(<company>).
    if sy-subrc eq 0.
      r_company = new zcl_cmd_company( ).
      r_company->set_data( ref #( <company> ) ).
      r_company->set_loevm( abap_true ).
      r_company->set_task( zcl_cmd_util=>mode-change ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 013
          v1 = conv #( i_company_code ).
    endif.

  endmethod.


  method delete_contact.
    check i_contact is not initial.
    try.
        r_contact = new zcl_cmd_contact( i_customer = customer
                                                    i_contact  = i_contact ).
        assign master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] to field-symbol(<cont>).
        if sy-subrc eq 0.
          " This is needed as in other case contact data are deleted in internal table
          " and there is an error that name is initial. So me must clear current state and
          " set all contacts as to be updated.
          clear master_data-central_data-contact-current_state.
          loop at master_data-central_data-contact-contacts assigning field-symbol(<cc>) where task is initial.
            <cc>-task = zcl_cmd_util=>mode-change.
          endloop.
          r_contact->set_data( ref #( <cont> ) ).
          r_contact->set_mode( zcl_cmd_util=>mode-delete ).
        endif.

      catch zcx_cmd_customer into data(e).
        "Contact doesn't exists
        if i_raise_error eq abap_true.
          raise exception type zcx_cmd_customer
            exporting
              id = e->if_t100_message~t100key-msgid
              no = e->if_t100_message~t100key-msgno
              v1 = e->if_t100_message~t100key-attr1
              v2 = e->if_t100_message~t100key-attr2
              v3 = e->if_t100_message~t100key-attr3
              v4 = e->if_t100_message~t100key-attr4.
        endif.
    endtry.

  endmethod.


  method delete_sales_org.
    assign master_data-sales_data-sales[ data_key-vkorg = i_sales_org
                                         data_key-vtweg = i_distr_channel
                                         data_key-spart = i_division
                                                                      ] to field-symbol(<sales>).
    if sy-subrc eq 0.
      r_sales = new zcl_cmd_sales( ).
      r_sales->set_data( ref #( <sales> ) ).
      r_sales->set_loevm( abap_true ).
      r_sales->set_task( zcl_cmd_util=>mode-change ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 005
          v1 = conv #( customer )
          v2 = conv #( i_sales_org )
          v3 = conv #( i_distr_channel )
          v4 = conv #( i_division ).
    endif.
  endmethod.


  method get_company.
    assign master_data-company_data-company[ data_key-bukrs = i_company_code
                                                                         ] to field-symbol(<company>).
    if sy-subrc eq 0.
      r_company = new zcl_cmd_company( ).
      r_company->set_data( ref #( <company> ) ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 013
          v1 = conv #( i_company_code ).
    endif.
  endmethod.


  method get_contact.

    try.
        r_contact = new zcl_cmd_contact( i_customer = customer
                                              i_contact  = i_contact
                                                         ).
        assign master_data-central_data-contact-contacts[ data_key-parnr = i_contact ] to field-symbol(<cont>).
        if sy-subrc eq 0.
          r_contact->set_data( ref #( <cont> ) ).
          r_contact->set_mode( zcl_cmd_util=>mode-change ).
        endif.
      catch zcx_cmd_customer into data(e).
        "Contact doesn't exists
        raise exception type zcx_cmd_customer
          exporting
            id = e->if_t100_message~t100key-msgid
            no = e->if_t100_message~t100key-msgno
            v1 = e->if_t100_message~t100key-attr1
            v2 = e->if_t100_message~t100key-attr2
            v3 = e->if_t100_message~t100key-attr3
            v4 = e->if_t100_message~t100key-attr4.
    endtry.



  endmethod.


  method get_contact_by_name.
    check i_lastname is not initial.
    assign master_data-central_data-contact-contacts[  address_type_3-postal-data-firstname  = i_firstname
                                                       address_type_3-postal-data-lastname   = i_lastname
                                                         ] to field-symbol(<cont>).
    if sy-subrc eq 0.
      try.
          r_contact = new zcl_cmd_contact( i_customer = customer
                                                            i_contact  = <cont>-data_key-parnr
                                                           ).
          r_contact->set_data( ref #( <cont> ) ).
          r_contact->set_mode( zcl_cmd_util=>mode-change ).
        catch zcx_cmd_customer into data(e).
          "Contact doesn't exists
          raise exception type zcx_cmd_customer
            exporting
              id = e->if_t100_message~t100key-msgid
              no = e->if_t100_message~t100key-msgno
              v1 = e->if_t100_message~t100key-attr1
              v2 = e->if_t100_message~t100key-attr2
              v3 = e->if_t100_message~t100key-attr3
              v4 = e->if_t100_message~t100key-attr4.
      endtry.
    endif.



  endmethod.


  method get_data.
    check customer is not initial.

    if i_reread_db eq abap_true.
      cmd_ei_api_extract=>get_data(
        exporting
          is_master_data = value #( customers = value #( ( header = value #( object_task = zcl_cmd_util=>mode-modify object_instance = customer ) ) ) )
        importing
          es_master_data = data(es_master_data)
          es_error       = data(e_error)
      ).
      if e_error-is_error eq abap_false.
        assign es_master_data-customers[ 1 ] to field-symbol(<customer>).
        if sy-subrc eq 0.
          r_master_data = <customer>.
          master_data = <customer>.
          original_data = <customer>.

        endif.
      else.
        raise exception type zcx_cmd_customer exporting messages = e_error-messages.
      endif.
    else.
      r_master_data = master_data.
    endif.
  endmethod.


  method get_sales_org.
    assign master_data-sales_data-sales[ data_key-vkorg = i_sales_org
                                         data_key-vtweg = i_distr_channel
                                         data_key-spart = i_division
                                                                      ] to field-symbol(<sales>).
    if sy-subrc eq 0.
      r_sales = new zcl_cmd_sales( ).
      r_sales->set_data( ref #( <sales> ) ).
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 005
          v1 = conv #( customer )
          v2 = conv #( i_sales_org )
          v3 = conv #( i_distr_channel )
          v4 = conv #( i_division ).
    endif.
  endmethod.


  method lock.
    check customer is not initial.
    call function 'ENQUEUE_EXKNA1'
      exporting
        mode_kna1      = 'E'
        mandt          = sy-mandt
        kunnr          = customer
*       x_kunnr        = x_kunnr    " Fill argument 02 with initial value?
*       _scope         = _scope
*       _wait          = _wait
*       _collect       = _collect    " Initially only collect lock
      exceptions
        foreign_lock   = 1
        system_failure = 2
        others         = 3.
    if sy-subrc <> 0.
      raise exception type zcx_cmd_customer
        exporting
          id = sy-msgid
          no = sy-msgno
          v1 = conv #( sy-msgv1 )
          v2 = conv #( sy-msgv2 )
          v3 = conv #( sy-msgv3 )
          v4 = conv #( sy-msgv4 ).
    endif.
  endmethod.


  method save.


    if master_data is initial.
      raise exception type zcx_cmd_customer exporting no = 002.
    endif.


    lock( ).

    "Delete Not changed company code data
    if mode ne zcl_cmd_util=>mode-create.
      delete master_data-company_data-company where task is initial or task eq zcl_cmd_util=>mode-current_state.
    endif.

    "Delete other sales orgs from the list to not check the authorizations.
    delete master_data-sales_data-sales where task is initial or task eq zcl_cmd_util=>mode-current_state.


    data(bapi_structure) = value cmds_ei_main( customers = value #( ( master_data ) ) ).


    cmd_ei_api=>maintain_bapi(
      exporting
         iv_test_run              = i_test_run
         iv_collect_messages      = abap_true
         is_master_data           = value #( customers = value #( ( master_data ) ) )
      importing
        es_master_data_correct   = data(correct_data)
        es_message_correct       = data(correct_messages)
        es_message_defective     = data(error_messages)
        ).

    if error_messages-is_error eq abap_false and i_test_run eq abap_false.

      if error_messages-is_error eq abap_false.
        zcl_cmd_util=>commit_work( i_wait = i_wait_after_commit ).
        unlock( ).
        try.
            customer = correct_data-customers[ 1 ]-header-object_instance-kunnr.
            mode = zcl_cmd_util=>mode-change.
            e_customer = customer.
          catch cx_sy_itab_line_not_found.

        endtry.
      else.
        zcl_cmd_util=>rollback_work( ).
        unlock( ).
        raise exception type zcx_cmd_customer exporting no = 003 messages = error_messages-messages.
      endif.
    elseif error_messages-is_error eq abap_true.
      if i_test_run eq abap_false.
        zcl_cmd_util=>rollback_work( ).
      endif.
      unlock( ).
      raise exception type zcx_cmd_customer exporting no = 003 messages = error_messages-messages.
    endif.

  endmethod.


  method set_master_data.
    master_data = i_master_data.
  endmethod.


  method unlock.
    call function 'DEQUEUE_EXKNA1'
      exporting
        mode_kna1 = 'E'
        mandt     = sy-mandt    " 01th enqueue argument
        kunnr     = customer
*       x_kunnr   = x_kunnr    " Fill argument 02 with initial value?
*       _scope    = _scope
*       _synchron = _synchron    " Synchonous unlock
*       _collect  = _collect    " Initially only collect lock
      .
  endmethod.
ENDCLASS.
