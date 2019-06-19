class zcl_cmd_texts definition
  public
  create protected .

  public section.

    class-methods: create_instance importing !i_texts       type ref to cvis_ei_cvis_text
                                             i_extension_id type guid_32
                                   returning value(r_texts) type ref to zcl_cmd_texts.
    methods add_text
      importing
        value(i_id)       type tdid
        value(i_language) type spras
        value(i_text)     type tline_tab
      raising
        zcx_cmd_customer .
    methods change_text
      importing
        value(i_id)       type tdid
        value(i_language) type spras
        value(i_text)     type tline_tab
      raising
        zcx_cmd_customer .
    methods delete_text
      importing
        value(i_id)       type tdid
        value(i_language) type spras
      raising
        zcx_cmd_customer .
    methods get_text
      importing
        value(i_id)       type tdid
        value(i_language) type spras
      returning
        value(r_text)     type tline_tab
      raising
        zcx_cmd_customer .
  protected section.
    data: ref_data type ref to cvis_ei_cvis_text.
    methods constructor
      importing
        !i_texts type ref to cvis_ei_cvis_text .

endclass.



class zcl_cmd_texts implementation.


  method add_text.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc ne 0.
      insert value #( data_key-text_id = i_id
                      data_key-langu = i_language
                      data = i_text
                      task = zcl_cmd_util=>mode-create
                    ) into table ref_data->texts.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 007
          v1 = conv #( i_id ).
    endif.
  endmethod.


  method change_text.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      <tx>-task = zcl_cmd_util=>mode-change.
      <tx>-data = i_text.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.
  endmethod.


  method constructor.
    check i_texts is not initial.
    ref_data = i_texts.
  endmethod.


  method delete_text.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      <tx>-task = zcl_cmd_util=>mode-delete.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.

  endmethod.


  method get_text.
    assign ref_data->texts[ data_key-text_id = i_id data_key-langu = i_language ] to field-symbol(<tx>).
    if sy-subrc eq 0.
      r_text = <tx>-data.
    else.
      raise exception type zcx_cmd_customer
        exporting
          no = 008
          v1 = conv #( i_id ).
    endif.
  endmethod.
  method create_instance.
    if i_extension_id is initial.
      r_texts = new #( i_texts = i_texts ).
    else.
      data: subclass type ref to object.
      try.
          data(sublcass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-texts ).
          create object subclass type (sublcass_abs_name)
           exporting
            i_texts       = i_texts.
          r_texts ?= subclass.
        catch zcx_cmd_no_extension.
          r_texts = new #( i_texts = i_texts ).
      endtry.
    endif.
  endmethod.

endclass.
