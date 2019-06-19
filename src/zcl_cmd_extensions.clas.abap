class zcl_cmd_extensions definition
  public
  final
  create public .

  public section.
    types: begin of t_extension_classes,
             type type string,
             name type string,
           end of t_extension_classes,
           tt_extension_classes type hashed table of t_extension_classes with unique key type,
           begin of t_extension_objects,
             id         type guid_32,
             extensions type tt_extension_classes,
           end of t_extension_objects,
           tt_extensions_objects type hashed table of t_extension_objects with unique key id.

    constants:
      begin of class_extension,
        contact  type string value 'contact',
        address  type string value 'address',
        sales    type string value 'sales',
        vat      type string value 'vat',
        tax_ind  type string value 'tax',
        remarks  type string value 'remarks',
        company  type string value 'company',
        central  type string value 'central',
        texts    type string value 'texts',
        customer type string value 'customer',
      end of class_extension.

    class-data: extension_objects type tt_extensions_objects.
    class-methods: set_extensions importing extensions          type tt_extension_classes
                                  returning value(extension_id) type guid_32.
    class-methods: get_extensions importing id                type guid_32
                                  returning value(extensions) type tt_extension_classes.
    class-methods: get_extension_by_type importing id                          type guid_32
                                                   type                        type string
                                         returning value(extension_class_name) type string.
    class-methods get_extension_class_abs_name
      importing
        id                type guid_32
        type              type string
      returning
        value(subclass_abs_name) type abap_abstypename
        raising zcx_cmd_no_extension.
  protected section.
  private section.
    class-methods get_class_description
      importing i_class_name         type string
      returning value(r_class_descr) type ref to cl_abap_typedescr.
endclass.



class zcl_cmd_extensions implementation.
  method set_extensions.
    cl_reca_guid=>guid_create(
      importing
        ed_guid_32 = extension_id ).
    insert value #( id = extension_id extensions = extensions ) into table extension_objects.
  endmethod.

  method get_extensions.
    assign extension_objects[ id = id ] to field-symbol(<ext>).
    if <ext> is assigned.
      extensions = <ext>-extensions.
    endif.
  endmethod.

  method get_extension_by_type.
    check id is not initial.
    assign extension_objects[ id = id ] to field-symbol(<ext>).
    if <ext> is assigned.
      assign <ext>-extensions[ type = type ] to field-symbol(<ext_class>).
      if <ext_class> is assigned.
        extension_class_name = <ext_class>-name.
      endif.
    endif.
  endmethod.

  METHOD get_extension_class_abs_name.
          data(subclass_description) = get_class_description( get_extension_by_type( id = id type = type ) ).
          if subclass_description is initial.
            raise exception type zcx_cmd_no_extension.
          endif.
          subclass_abs_name = subclass_description->absolute_name.
  ENDMETHOD.

   method get_class_description.
    check i_class_name is not initial.
    "global class
    cl_abap_classdescr=>describe_by_name( exporting p_name = to_upper( i_class_name )
                                          receiving p_descr_ref = r_class_descr
                                                  exceptions type_not_found = 1 ).
    if sy-subrc eq 0.
      return.
    else.
      "local class
      data(local_class_name) = |\\PROGRAM={ sy-cprog }\\CLASS={ i_class_name }|.
      cl_abap_classdescr=>describe_by_name( exporting p_name = to_upper( local_class_name )
                                            receiving p_descr_ref = r_class_descr
                                                    exceptions type_not_found = 1 ).
      if sy-subrc eq 0.
        return.
      endif.
    endif.
  endmethod.

endclass.
