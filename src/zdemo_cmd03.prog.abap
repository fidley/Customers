*Demo on changung contact person
report zdemo_cmd03.


parameters: p_custom type kna1-kunnr obligatory,
            p_cont type knvk-parnr obligatory.

try.
    data(customer) = new zcl_cmd_customer( i_customer = p_custom ).
    data(contact) = customer->change_contact( i_contact = p_cont ).
    contact->set_addr_lastname( 'LastName' ).
    contact->set_addr_firstname( 'FirstName' ).
    contact->add_email( 'nomail@nomail.test' ).
    customer->save( ).
  catch zcx_cmd_customer.
endtry.
