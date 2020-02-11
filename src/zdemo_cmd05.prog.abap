*Demo on deleting contact person
report zdemo_cmd05.


parameters: p_custom type kna1-kunnr obligatory,
            p_cont   type knvk-parnr obligatory.

try.
    data(customer) = new zcl_cmd_customer( i_customer = p_custom ).
    data(contact) = customer->delete_contact( p_cont ).
    customer->save( ).
  catch zcx_cmd_customer.
endtry.
