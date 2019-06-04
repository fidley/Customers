class ZCL_CMD_REMARKS definition
  public
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !I_DATA type ref to CVIS_EI_CVI_REM .
  methods ADD_REMARK
    importing
      value(I_REMARK) type AD_REMARK1
      value(I_LANGUAGE) type SPRAS default SY-LANGU
      value(I_LANGUAGE_ISO) type SPRAS_ISO optional .
  methods DELETE_REMARK
    importing
      value(I_REMARK) type AD_REMARK1
      value(I_LANGUAGE) type SPRAS optional
      value(I_LANGUAGE_ISO) type SPRAS_ISO optional .
  methods CHANGE_REMARK
    importing
      value(I_REMARK) type AD_REMARK1
      value(I_LANGUAGE) type SPRAS default SY-LANGU
      value(I_LANGUAGE_ISO) type SPRAS_ISO optional .
  protected section.
  private section.
    data: ref_data type ref to cvis_ei_cvi_rem.
ENDCLASS.



CLASS ZCL_CMD_REMARKS IMPLEMENTATION.


  method ADD_REMARK.
    if i_language_iso is not initial.
      assign ref_data->remarks[ data-langu_iso = i_language_iso ] to field-symbol(<rem>).
    elseif i_language is not initial.
      assign ref_data->remarks[ data-langu = i_language ] to <rem>.
    endif.
    if <rem> is not assigned.
      if i_language_iso is not initial.
        insert value #( task = ZCL_CMD_util=>mode-create data-langu_iso = i_language_iso  data-adr_notes = i_remark ) into table ref_data->remarks.
      elseif i_language is not initial.
        insert value #( task = ZCL_CMD_util=>mode-create data-langu = i_language  data-adr_notes = i_remark ) into table ref_data->remarks.
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


  method CHANGE_REMARK.
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
      <rem>-task = ZCL_CMD_util=>mode-change.
      <rem>-data-adr_notes = i_remark.
    endif.

  endmethod.


  method CONSTRUCTOR.
    ref_data = i_data.
  endmethod.


  method DELETE_REMARK.
    if i_language_iso is not initial.
      assign ref_data->remarks[ data-langu_iso = i_language_iso ] to field-symbol(<rem>).
    elseif i_language is not initial.
      assign ref_data->remarks[ data-langu = i_language ] to <rem>.
    endif.
    if <rem> is  assigned.
      <rem>-task = ZCL_CMD_util=>mode-delete.
    endif.
  endmethod.
ENDCLASS.
