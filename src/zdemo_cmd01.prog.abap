report zdemo_cmd01.


parameters: p_custom type kna1-kunnr.

try.
    data(customer) = new zcl_cmd_customer( i_customer = p_custom ).

    data(contact) = customer->add_new_contact( ).
    contact->set_addr_lastname( 'LastName' ).
    contact->set_addr_firstname( 'FirstName' ).

    customer->save(    ).


  catch zcx_cmd_customer.


endtry.
