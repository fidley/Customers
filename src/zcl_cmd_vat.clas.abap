class zcl_cmd_vat definition
  public
  create private

  global friends zcl_cmd_customer .

  public section.

    methods add_vat_number
      importing
        value(i_country) type land1_gp
        value(i_vat_no)  type stceg
      raising
        zcx_cmd_customer .
    methods change_vat_number
      importing
        value(i_country) type land1_gp
        value(i_vat_no)  type stceg
      raising
        zcx_cmd_customer .
    methods delete_vat_number
      importing
        value(i_country) type land1_gp
      raising
        zcx_cmd_customer .
    methods get_vat_number
      importing
        value(i_country) type land1_gp
      returning
        value(r_vat_no)  type stceg
      raising
        zcx_cmd_customer .
  protected section.
  private section.
    data: ref_data type ref to cvis_ei_vat_numbers.
    methods constructor importing i_vat type ref to cvis_ei_vat_numbers.
endclass.



class zcl_cmd_vat implementation.


  method add_vat_number.

    assign ref_data->vat_numbers[ data_key-land1 = i_country ] to field-symbol(<vat>).
    if sy-subrc ne 0.
      insert value #( task = zsd_customer_util=>mode-create
                      data_key-land1 = i_country
                      data-stceg = i_vat_no
                    ) into table ref_data->vat_numbers.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 010
          v1 = conv #( i_country ).
    endif.

  endmethod.

  method change_vat_number.

    assign ref_data->vat_numbers[ data_key-land1 = i_country ] to field-symbol(<vat>).
    if sy-subrc eq 0.
      <vat>-task = zsd_customer_util=>mode-change.
      <vat>-data-stceg = i_vat_no.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 009
          v1 = conv #( i_country ).
    endif.

  endmethod.

  method delete_vat_number.

    assign ref_data->vat_numbers[ data_key-land1 = i_country ] to field-symbol(<vat>).
    if sy-subrc eq 0.
      <vat>-task = zsd_customer_util=>mode-delete.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 009
          v1 = conv #( i_country ).
    endif.

  endmethod.

  method get_vat_number.

    assign ref_data->vat_numbers[ data_key-land1 = i_country ] to field-symbol(<vat>).
    if sy-subrc eq 0.
      r_vat_no = <vat>-data-stceg.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 009
          v1 = conv #( i_country ).
    endif.

  endmethod.

  method constructor.
    ref_data = i_vat.
  endmethod.
endclass.
