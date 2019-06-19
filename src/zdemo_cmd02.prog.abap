*&---------------------------------------------------------------------*
*& Report  zdemo_cmd02
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
report zdemo_cmd02.

parameters: p_custom type kna1-kunnr,
            p_sale   type knvv-vkorg,
            p_distr  type knvv-vtweg,
            p_divis  type knvv-spart.

class lcl_customer definition create public inheriting from zcl_cmd_customer.

  public section.
    methods: constructor importing
                           value(i_customer) type kna1-kunnr optional
                         raising
                           zcx_cmd_customer .
  protected section.
  private section.

endclass.

class lcl_customer implementation.

  method constructor.
    super->constructor( exporting i_customer = i_customer
                                  i_extension_classes = value #( (  type = zcl_cmd_extensions=>class_extension-sales
                                                                    name = 'LCL_CMD_SALES' ) ) ).
  endmethod.

endclass.

class lcl_cmd_sales definition create public inheriting from zcl_cmd_sales.

  public section.
    methods: new_method.
  protected section.
  private section.

endclass.

class lcl_cmd_sales implementation.

  method new_method.

  endmethod.

endclass.

start-of-selection.

  try.
      data(customer) = new lcl_customer( i_customer = p_custom ).
      data(sales_org) = cast lcl_cmd_sales( customer->get_sales_org(
        exporting
          i_sales_org      = p_sale
          i_distr_channel  = p_distr
          i_division       = p_divis
      ) ).
      sales_org->new_method( ).
      customer->save( ).

    catch zcx_cmd_customer.


  endtry.
