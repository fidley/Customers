class zcl_cmd_remarks definition
  public
  create protected .

  public section.

    class-methods: create_instance importing i_extension_id   type guid_32
                                             i_data           type ref to cvis_ei_cvi_rem
                                   returning value(r_remarks) type ref to zcl_cmd_remarks.

    methods add_remark
      importing
        value(i_remark)       type ad_remark1
        value(i_language)     type spras default sy-langu
        value(i_language_iso) type spras_iso optional .
    methods delete_remark
      importing
        value(i_remark)       type ad_remark1
        value(i_language)     type spras optional
        value(i_language_iso) type spras_iso optional .
    methods change_remark
      importing
        value(i_remark)       type ad_remark1
        value(i_language)     type spras default sy-langu
        value(i_language_iso) type spras_iso optional .
  protected section.
    data: ref_data type ref to cvis_ei_cvi_rem.
    methods constructor
      importing
        !i_data type ref to cvis_ei_cvi_rem .
endclass.



class zcl_cmd_remarks implementation.


  method add_remark.
    if i_language_iso is not initial.
      assign ref_data->remarks[ data-langu_iso = i_language_iso ] to field-symbol(<rem>).
    elseif i_language is not initial.
      assign ref_data->remarks[ data-langu = i_language ] to <rem>.
    endif.
    if <rem> is not assigned.
      if i_language_iso is not initial.
        insert value #( task = zcl_cmd_util=>mode-create data-langu_iso = i_language_iso  data-adr_notes = i_remark ) into table ref_data->remarks.
      elseif i_language is not initial.
        insert value #( task = zcl_cmd_util=>mode-create data-langu = i_language  data-adr_notes = i_remark ) into table ref_data->remarks.
      endif.
    else.
      change_remark(
        exporting
          i_remark       = i_remark
          i_language     = i_language
          i_language_iso = i_language_iso
      ).
    endif.
  endmethod.


  method change_remark.
    if i_language_iso is not initial.
      assign ref_data->remarks[ data-langu_iso = i_language_iso ] to field-symbol(<rem>).
    elseif i_language is not initial.
      assign ref_data->remarks[ data-langu = i_language ] to <rem>.
    endif.
    if <rem> is not assigned and ( i_language_iso is not initial or i_language is not initial ).
      insert initial line into table ref_data->remarks assigning <rem>.
      if sy-subrc eq 0.
        if i_language_iso is not initial.
          <rem>-data-langu_iso = i_language_iso.
        elseif i_language is not initial.
          <rem>-data-langu = i_language.
        endif.
      endif.
    endif.
    if <rem> is assigned.
      <rem>-task = zcl_cmd_util=>mode-change.
      <rem>-data-adr_notes = i_remark.
    endif.

  endmethod.


  method constructor.
    ref_data = i_data.
  endmethod.


  method delete_remark.
    if i_language_iso is not initial.
      assign ref_data->remarks[ data-langu_iso = i_language_iso ] to field-symbol(<rem>).
    elseif i_language is not initial.
      assign ref_data->remarks[ data-langu = i_language ] to <rem>.
    endif.
    if <rem> is  assigned.
      <rem>-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.
  method create_instance.
    if i_extension_id is initial.
      r_remarks = new #( i_data = i_data ).
    else.
      data: subclass type ref to object.
      try.
          data(sublcass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-remarks ).
          create object subclass type (sublcass_abs_name)
           exporting
            i_data       = i_data.
          r_remarks ?= subclass.
        catch zcx_cmd_no_extension.
        r_remarks = new #( i_data = i_data ).
      endtry.
    endif.
  endmethod.

endclass.
