class ZCL_CMD_VAT definition
  public
  final
  create private

  global friends zcl_cmd_customer .

public section.

  methods ADD_VAT_NUMBER
    importing
      value(I_COUNTRY) type LAND1_GP
      value(I_VAT_NO) type STCEG
    raising
      zcx_cmd_customer .
  methods CHANGE_VAT_NUMBER
    importing
      value(I_COUNTRY) type LAND1_GP
      value(I_VAT_NO) type STCEG
    raising
      zcx_cmd_customer .
  methods DELETE_VAT_NUMBER
    importing
      value(I_COUNTRY) type LAND1_GP
    raising
      zcx_cmd_customer .
  methods GET_VAT_NUMBER
    importing
      value(I_COUNTRY) type LAND1_GP
    returning
      value(R_VAT_NO) type STCEG
    raising
      zcx_cmd_customer .
  protected section.
  private section.
    data: ref_data type ref to cvis_ei_vat_numbers.
    methods constructor importing i_vat type ref to cvis_ei_vat_numbers.
ENDCLASS.



CLASS ZCL_CMD_VAT IMPLEMENTATION.
ENDCLASS.
