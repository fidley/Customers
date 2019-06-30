*Demo on changing contact person
report zdemo_cmd04.


parameters: p_custom type kna1-kunnr obligatory,
            p_fname  type bapiad3vl-firstname obligatory,
            p_lname  type bapiad3vl-lastname obligatory.

try.
    data(customer) = new zcl_cmd_customer( i_customer = p_custom ).
    data(contact) = customer->get_contact_by_name(
                    i_firstname      = p_fname
                    i_lastname       = p_lname ).
    contact->set_addr_lastname( 'LastName2' ).
    contact->set_addr_firstname( 'FirstName2' ).
    customer->save( ).

  catch zcx_cmd_customer.
endtry.
