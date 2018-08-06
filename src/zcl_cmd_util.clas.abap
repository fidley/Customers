class ZCL_CMD_UTIL definition
  public
  final
  create public .

public section.

  types:    "! Mode for actions
    t_mode type c length 1 .

  constants:
    begin of mode,
                 create        type t_mode value 'I',
                 change        type t_mode value 'U',
                 modify        type t_mode value 'M',
                 delete        type t_mode value 'D',
                 current_state type t_mode value 'X',
                 undelete      type t_mode value 'R',
               end of mode .
  constants:
    begin of phone_type,
                 fixed          type bapiadtel-r_3_user value '',
                 fixed_default  type bapiadtel-r_3_user value 1,
                 mobile         type bapiadtel-r_3_user value 2,
                 mobile_default type bapiadtel-r_3_user value 3,
               end of phone_type .
  constants:
    begin of gender,
                 male   type c value '1',
                 female type c value '2',
               end of gender .

  class-methods COMMIT_WORK
    importing
      !I_WAIT type BAPITA-WAIT optional
    raising
      zcx_cmd_customer .
  class-methods ROLLBACK_WORK .
  class-methods SET_DATAX_STRUCTURE
    importing
      !I_SOURCE type ANY
    changing
      !C_TARGET type ANY .
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_CMD_UTIL IMPLEMENTATION.


  method COMMIT_WORK.
    call function 'BAPI_TRANSACTION_COMMIT'
      exporting
        wait = i_wait.
  endmethod.


  method ROLLBACK_WORK.
    call function 'BAPI_TRANSACTION_ROLLBACK'.
  endmethod.


  method SET_DATAX_STRUCTURE.
    field-symbols: <src> type any,
                   <tar> type any.
    if i_source is not initial.
      do.
        assign component sy-index of structure i_source to <src>.
        if sy-subrc eq 0 and <src> is not initial.
          assign component sy-index of structure c_target to <tar>.
          if sy-subrc eq 0.
            <tar> = abap_true.
          else.
            exit.
          endif.
        elseif sy-subrc ne 0.
          exit.
        endif.
      enddo.
    endif.
  endmethod.
ENDCLASS.
