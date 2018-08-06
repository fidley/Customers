class ZCL_CMD_TEXTS definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !I_TEXTS type ref to CVIS_EI_CVIS_TEXT .
  methods ADD_TEXT
    importing
      value(I_ID) type TDID
      value(I_LANGUAGE) type SPRAS
      value(I_TEXT) type TLINE_TAB
    raising
      zcx_cmd_customers .
  methods CHANGE_TEXT
    importing
      value(I_ID) type TDID
      value(I_LANGUAGE) type SPRAS
      value(I_TEXT) type TLINE_TAB
    raising
      zcx_cmd_customers .
  methods DELETE_TEXT
    importing
      value(I_ID) type TDID
      value(I_LANGUAGE) type SPRAS
    raising
      zcx_cmd_customers .
  methods GET_TEXT
    importing
      value(I_ID) type TDID
      value(I_LANGUAGE) type SPRAS
    returning
      value(R_TEXT) type TLINE_TAB
    raising
      zcx_cmd_customers .
  protected section.
  private section.
    data: ref_data type ref to cvis_ei_cvis_text.

ENDCLASS.



CLASS ZCL_CMD_TEXTS IMPLEMENTATION.


  method ADD_TEXT.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc ne 0.
      insert value #( data_key-text_id = i_id
                      data_key-langu = i_language
                      data = i_text
                      task = zcl_cmd_util=>mode-create
                    ) into table ref_data->texts.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 007
          v1 = conv #( i_id ).
    endif.
  endmethod.


  method CHANGE_TEXT.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      <tx>-task = zcl_cmd_util=>mode-change.
      <tx>-data = i_text.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.
  endmethod.


  method CONSTRUCTOR.
    check i_texts is not initial.
    ref_data = i_texts.
  endmethod.


  method DELETE_TEXT.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      <tx>-task = zcl_cmd_util=>mode-delete.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.

  endmethod.


  method GET_TEXT.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      r_text = <tx>-data.
    else.
      raise exception type zcx_cmd_customers
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.
  endmethod.
ENDCLASS.
