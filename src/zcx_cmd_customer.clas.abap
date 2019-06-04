class zcx_cmd_customer definition
  public
  inheriting from cx_static_check
  create public .

  public section.

    interfaces if_t100_message .

    constants message_class type sy-msgid value 'Z_CMD_CUSTOMER' ##NO_TEXT.

    methods constructor
      importing
        !id       like if_t100_message=>t100key-msgid default message_class
        !no       like if_t100_message=>t100key-msgno default 666
        !v1       like if_t100_message=>t100key-attr1 optional
        !v2       like if_t100_message=>t100key-attr2 optional
        !v3       like if_t100_message=>t100key-attr3 optional
        !v4       like if_t100_message=>t100key-attr4 optional
        !messages type bapiret2_t optional
        !previous like previous optional .
    methods get_messages
      returning
        value(r_messages) type bapiret2_t .
  protected section.
  private section.
    data: messages type bapiret2_t.
endclass.



class zcx_cmd_customer implementation.


  method constructor ##ADT_SUPPRESS_GENERATION.
    call method super->constructor
      exporting
        previous = previous.

    clear textid.
    if id is initial.
      if_t100_message~t100key-msgid = message_class.
    else.
      if_t100_message~t100key-msgid = id.
    endif.
    if no is not supplied.
      if_t100_message~t100key-msgno = 666.
    else.
      if_t100_message~t100key-msgno = no.
    endif.

    if_t100_message~t100key-attr1 = v1.
    if_t100_message~t100key-attr2 = v2.
    if_t100_message~t100key-attr3 = v3.
    if_t100_message~t100key-attr4 = v4.

    if messages is not initial.
      me->messages = messages.
    endif.

  endmethod.
  method get_messages.
    if messages is not initial.
      r_messages = messages.
    else.

      r_messages = value #( (  type       = 'E'
                               id         = if_t100_message~t100key-msgid
                               number     = if_t100_message~t100key-msgno
                               message_v1 = if_t100_message~t100key-attr1
                               message_v2 = if_t100_message~t100key-attr2
                               message_v3 = if_t100_message~t100key-attr3
                               message_v4 = if_t100_message~t100key-attr4
                              ) ).
      assign r_messages[ 1 ] to field-symbol(<mes>).
      if sy-subrc eq 0.
        message id  if_t100_message~t100key-msgid type 'E' number if_t100_message~t100key-msgno
               with if_t100_message~t100key-attr1 if_t100_message~t100key-attr2
                    if_t100_message~t100key-attr3 if_t100_message~t100key-attr4 into <mes>-message.
      endif.

    endif.
  endmethod.
endclass.
