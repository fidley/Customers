class ZCL_CMD_TAX_IND definition
  public
  final
  create private

  global friends ZCL_CMD .

public section.

  methods ADD_TAX_INDICATOR
    importing
      value(I_COUNTRY) type ALAND
      value(I_CATEGORY) type TATYP
      value(I_INDICATOR) type TAKLD
    raising
      zcx_cmd_customers .
  methods CHANGE_TAX_INDICATOR
    importing
      value(I_COUNTRY) type ALAND
      value(I_CATEGORY) type TATYP
      value(I_INDICATOR) type TAKLD
    raising
      zcx_cmd_customers .
  methods DELETE_TAX_INDICATOR
    importing
      value(I_COUNTRY) type ALAND
      value(I_CATEGORY) type TATYP
    raising
      zcx_cmd_customers .
  methods GET_TAX_INDICATOR
    importing
      value(I_COUNTRY) type ALAND
      value(I_CATEGORY) type TATYP
    returning
      value(R_INDICATOR) type TAKLD
    raising
      zcx_cmd_customers .
  protected section.
  private section.
    data: ref_data type ref to cmds_ei_cmd_tax_ind .
    methods constructor importing i_tax_ind type ref to cmds_ei_cmd_tax_ind.

ENDCLASS.



CLASS ZCL_CMD_TAX_IND IMPLEMENTATION.


  method ADD_TAX_INDICATOR.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc ne 0.
      insert value #( task = ZCL_CMD_util=>mode-create
                      data_key-aland = i_country
                      data_key-tatyp = i_category
                      data-taxkd     = i_indicator
                    ) into table ref_data->tax_ind.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 012
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method CHANGE_TAX_INDICATOR.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      <tax>-task = ZCL_CMD_util=>mode-change.
      <tax>-data-taxkd = i_indicator.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method CONSTRUCTOR.
    ref_data = i_tax_ind.
  endmethod.


  method DELETE_TAX_INDICATOR.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      <tax>-task = ZCL_CMD_util=>mode-delete.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.


  method GET_TAX_INDICATOR.

    assign ref_data->tax_ind[ data_key-aland = i_country data_key-tatyp = i_category ] to field-symbol(<tax>).
    if sy-subrc eq 0.
      r_indicator = <tax>-data-taxkd.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 011
          v1 = conv #( i_country )
          v2 = conv #( i_category ).
    endif.

  endmethod.
ENDCLASS.
