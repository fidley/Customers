class zcl_cmd_util definition
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

    class-methods commit_work
      importing
        !i_wait type bapita-wait optional
      raising
        zcx_cmd_customer .
    class-methods rollback_work .
    class-methods set_datax_structure
      importing
        !i_source type any
      changing
        !c_target type any .

  protected section.
  private section.
endclass.



class zcl_cmd_util implementation.


  method commit_work.
    call function 'BAPI_TRANSACTION_COMMIT'
      exporting
        wait = i_wait.
  endmethod.


  method rollback_work.
    call function 'BAPI_TRANSACTION_ROLLBACK'.
  endmethod.


  method set_datax_structure.
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


endclass.
