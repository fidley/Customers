class ZCX_CMD_CUSTOMER definition
  public
  inheriting from CX_STATIC_CHECK
  create public .

public section.

  interfaces IF_T100_MESSAGE .

  constants MESSAGE_CLASS type SY-MSGID value 'Z_CMD_CUSTOMER' ##NO_TEXT.

  methods CONSTRUCTOR
    importing
      !TEXTID like IF_T100_MESSAGE=>T100KEY optional
      !PREVIOUS like PREVIOUS optional .
  methods GET_MESSAGES
    returning
      value(R_MESSAGES) type BAPIRET2_T .
  protected section.
  private section.
    data: messages type bapiret2_t.
ENDCLASS.



CLASS ZCX_CMD_CUSTOMER IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
PREVIOUS = PREVIOUS
.
clear me->textid.
if textid is initial.
  IF_T100_MESSAGE~T100KEY = IF_T100_MESSAGE=>DEFAULT_TEXTID.
else.
  IF_T100_MESSAGE~T100KEY = TEXTID.
endif.
  endmethod.


  method GET_MESSAGES.
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
ENDCLASS.
