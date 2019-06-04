class zcl_cmd_tax_ind definition
  public
  final
  create private

  global friends zcl_cmd_customer.

  public section.

    methods add_tax_indicator
      importing
        value(i_country)   type aland
        value(i_category)  type tatyp
        value(i_indicator) type takld
      raising
        zcx_cmd_customer .
    methods change_tax_indicator
      importing
        value(i_country)   type aland
        value(i_category)  type tatyp
        value(i_indicator) type takld
      raising
        zcx_cmd_customer .
    methods delete_tax_indicator
      importing
        value(i_country)  type aland
        value(i_category) type tatyp
      raising
        zcx_cmd_customer .
    methods get_tax_indicator
      importing
        value(i_country)   type aland
        value(i_category)  type tatyp
      returning
        value(r_indicator) type takld
      raising
        zcx_cmd_customer .
  protected section.
  private section.
    data: ref_data type ref to cmds_ei_cmd_tax_ind .
    methods constructor importing i_tax_ind type ref to cmds_ei_cmd_tax_ind.

endclass.



class zcl_cmd_tax_ind implementation.


  method add_tax_indicator.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc ne 0.
      insert value #( task = zcl_cmd_util=>mode-create
                      data_key-aland = i_country
                      data_key-tatyp = i_category
                      data-taxkd     = i_indicator
                    ) into table ref_data->tax_ind.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 012
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method change_tax_indicator.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      <tax>-task = zcl_cmd_util=>mode-change.
      <tax>-data-taxkd = i_indicator.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method constructor.
    ref_data = i_tax_ind.
  endmethod.


  method delete_tax_indicator.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      <tax>-task = zcl_cmd_util=>mode-delete.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method get_tax_indicator.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      r_indicator = <tax>-data-taxkd.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.
endclass.
