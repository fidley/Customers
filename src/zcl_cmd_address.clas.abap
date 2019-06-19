class zcl_cmd_address definition
  public
  create protected .

  public section.

    data: remarks      type ref to zcl_cmd_remarks,
          extension_id type guid_32 read-only.
    class-methods: create_instance importing i_extension_id   type guid_32
                                   returning value(r_address) type ref to zcl_cmd_address.
    methods set_data
      importing
        !i_address type ref to cvis_ei_address1 .
    methods set_addr_vers
      importing
        value(i_addr_vers) type ad_nation .
    methods set_from_date
      importing
        value(i_from_date) type ad_date_fr .
    methods set_to_date
      importing
        value(i_to_date) type ad_date_to .
    methods set_title
      importing
        value(i_title) type ad_title .
    methods set_name
      importing
        value(i_name) type ad_name1 .
    methods set_name_2
      importing
        value(i_name_2) type ad_name2 .
    methods set_name_3
      importing
        value(i_name_3) type ad_name3 .
    methods set_name_4
      importing
        value(i_name_4) type ad_name4 .
    methods set_conv_name
      importing
        value(i_conv_name) type ad_nametxt .
    methods set_c_o_name
      importing
        value(i_c_o_name) type ad_name_co .
    methods set_city
      importing
        value(i_city) type ad_city1 .
    methods set_district
      importing
        value(i_district) type ad_city2 .
    methods set_city_no
      importing
        value(i_city_no) type ad_citynum .
    methods set_distrct_no
      importing
        value(i_distrct_no) type ad_citypnm .
    methods set_chckstatus
      importing
        value(i_chckstatus) type ad_checkst .
    methods set_regiogroup
      importing
        value(i_regiogroup) type regiogroup .
    methods set_postl_cod1
      importing
        value(i_postl_cod1) type ad_pstcd1 .
    methods set_postl_cod2
      importing
        value(i_postl_cod2) type ad_pstcd2 .
    methods set_postl_cod3
      importing
        value(i_postl_cod3) type ad_pstcd3 .
    methods set_pcode1_ext
      importing
        value(i_pcode1_ext) type ad_pst1xt .
    methods set_pcode2_ext
      importing
        value(i_pcode2_ext) type ad_pst2xt .
    methods set_pcode3_ext
      importing
        value(i_pcode3_ext) type ad_pst3xt .
    methods set_po_box
      importing
        value(i_po_box) type ad_pobx .
    methods set_po_w_o_no
      importing
        value(i_po_w_o_no) type ad_pobxnum .
    methods set_po_box_cit
      importing
        value(i_po_box_cit) type ad_pobxloc .
    methods set_pboxcit_no
      importing
        value(i_pboxcit_no) type ad_cit2num .
    methods set_po_box_reg
      importing
        value(i_po_box_reg) type ad_pobxreg .
    methods set_pobox_ctry
      importing
        value(i_pobox_ctry) type ad_pobxcty .
    methods set_po_ctryiso
      importing
        value(i_po_ctryiso) type intca .
    methods set_deliv_dis
      importing
        value(i_deliv_dis) type ad_pstlar .
    methods set_transpzone
      importing
        value(i_transpzone) type lzone .
    methods set_street
      importing
        value(i_street) type ad_street .
    methods set_street_no
      importing
        value(i_street_no) type ad_strnum .
    methods set_str_abbr
      importing
        value(i_str_abbr) type ad_strabbr .
    methods set_house_no
      importing
        value(i_house_no) type ad_hsnm1 .
    methods set_house_no2
      importing
        value(i_house_no2) type ad_hsnm2 .
    methods set_house_no3
      importing
        value(i_house_no3) type ad_hsnm3 .
    methods set_str_suppl1
      importing
        value(i_str_suppl1) type ad_strspp1 .
    methods set_str_suppl2
      importing
        value(i_str_suppl2) type ad_strspp2 .
    methods set_str_suppl3
      importing
        value(i_str_suppl3) type ad_strspp3 .
    methods set_location
      importing
        value(i_location) type ad_lctn .
    methods set_building
      importing
        value(i_building) type ad_bldng .
    methods set_floor
      importing
        value(i_floor) type ad_floor .
    methods set_room_no
      importing
        value(i_room_no) type ad_roomnum .
    methods set_country
      importing
        value(i_country) type land1 .
    methods set_countryiso
      importing
        value(i_countryiso) type intca .
    methods set_langu
      importing
        value(i_langu) type spras .
    methods set_langu_iso
      importing
        value(i_langu_iso) type laiso .
    methods set_region
      importing
        value(i_region) type regio .
    methods set_sort1
      importing
        value(i_sort1) type ad_sort1 .
    methods set_sort2
      importing
        value(i_sort2) type ad_sort2 .
    methods set_extens_1
      importing
        value(i_extens_1) type ad_extens1 .
    methods set_extens_2
      importing
        value(i_extens_2) type ad_extens2 .
    methods set_time_zone
      importing
        value(i_time_zone) type ad_tzone .
    methods set_taxjurcode
      importing
        value(i_taxjurcode) type ad_txjcd .
    methods set_address_id
      importing
        value(i_address_id) type ad_addr_id .
    methods set_langu_cr
      importing
        value(i_langu_cr) type ad_langucr .
    methods set_langucriso
      importing
        value(i_langucriso) type laiso .
    methods set_comm_type
      importing
        value(i_comm_type) type ad_comm .
    methods set_addr_group
      importing
        value(i_addr_group) type ad_group .
    methods set_home_city
      importing
        value(i_home_city) type ad_city3 .
    methods set_homecityno
      importing
        value(i_homecityno) type ad_cityhnm .
    methods set_dont_use_s
      importing
        value(i_dont_use_s) type ad_no_uses .
    methods set_dont_use_p
      importing
        value(i_dont_use_p) type ad_no_usep .
    methods set_po_box_lobby
      importing
        value(i_po_box_lobby) type ad_po_box_lby .
    methods set_deli_serv_type
      importing
        value(i_deli_serv_type) type ad_delivery_service_type .
    methods set_deli_serv_number
      importing
        value(i_deli_serv_number) type ad_delivery_service_number .
    methods set_county_code
      importing
        value(i_county_code) type ad_cntynum .
    methods set_county
      importing
        value(i_county) type ad_county .
    methods set_township_code
      importing
        value(i_township_code) type ad_twshpnum .
    methods set_township
      importing
        value(i_township) type ad_township .
    methods add_phone_number
      importing
        value(i_phone)     type bapiadtel-telephone
        value(i_extension) type bapiadtel-extension optional
        value(i_standard)  type bapiadtel-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods delete_phone_number
      importing
        value(i_phone)     type bapiadtel-telephone
        value(i_extension) type bapiadtel-extension optional .
    methods change_phone_number
      importing
        value(i_phone_old)     type bapiadtel-telephone
        value(i_extension_old) type bapiadtel-extension optional
        value(i_phone)         type bapiadtel-telephone
        value(i_extension)     type bapiadtel-extension optional
        value(i_standard)      type bapiadtel-std_no default abap_true
        value(i_country)       type bapiadtel-country optional .
    methods add_mobile_number
      importing
        value(i_phone)    type bapiadtel-telephone
        value(i_standard) type bapiadtel-std_no default abap_true
        value(i_country)  type bapiadtel-country optional .
    methods delete_mobile_number
      importing
        value(i_phone) type bapiadtel-telephone .
    methods change_mobile_number
      importing
        value(i_phone_old) type bapiadtel-telephone
        value(i_phone)     type bapiadtel-telephone
        value(i_standard)  type bapiadtel-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods add_fax_number
      importing
        value(i_fax)       type bapiadfax-fax
        value(i_extension) type bapiadfax-extension optional
        value(i_standard)  type bapiadfax-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods delete_fax_number
      importing
        value(i_fax)       type bapiadfax-fax
        value(i_extension) type bapiadfax-extension optional .
    methods change_fax_number
      importing
        value(i_fax_old)       type bapiadfax-fax
        value(i_extension_old) type bapiadfax-extension optional
        value(i_fax)           type bapiadfax-fax
        value(i_extension)     type bapiadfax-extension optional
        value(i_standard)      type bapiadfax-std_no default abap_true
        value(i_country)       type bapiadtel-country optional .
    methods add_email
      importing
        value(i_email)    type bapiadsmtp-e_mail
        value(i_standard) type bapiadsmtp-std_no default abap_true .
    methods delete_email
      importing
        value(i_email) type bapiadsmtp-e_mail .
    methods change_email
      importing
        value(i_email_old) type bapiadsmtp-e_mail
        value(i_email)     type bapiadsmtp-e_mail
        value(i_standard)  type bapiadsmtp-std_no default abap_true .
    methods get_standard_phone_number
      exporting
        value(e_phone)     type bapiadtel-telephone
        value(e_extension) type bapiadtel-extension
        value(e_country)   type bapiadtel-country .
    methods get_standard_mobile_number
      exporting
        value(e_phone)   type bapiadtel-telephone
        value(e_country) type bapiadtel-country .
    methods get_standard_fax_number
      exporting
        value(e_fax)       type bapiadfax-fax
        value(e_extension) type bapiadfax-extension
        value(e_country)   type bapiadfax-country .
    methods get_standard_email
      exporting
        value(e_email) type bapiadsmtp-e_mail .
    methods add_webpage
      importing
        value(i_url)      type ad_uri
        value(i_standard) type bapiaduri-std_no default abap_true .
    methods delete_webpage
      importing
        value(i_url) type ad_uri .
    methods change_webpage
      importing
        value(i_url_old)  type ad_uri
        value(i_url)      type ad_uri
        value(i_standard) type bapiadsmtp-std_no default abap_true .
    methods get_standard_webpage
      exporting
        value(e_url) type ad_uri .
  protected section.

    data: address type ref to cvis_ei_address1.
    methods: constructor importing i_extension_id   type guid_32 optional.

endclass.



class zcl_cmd_address implementation.


  method add_email.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table address->communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method add_fax_number.
    assign address->communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                      contact-datax-fax = abap_true
                      contact-datax-extension = abap_true
                      contact-datax-std_no = abap_true
                      contact-datax-country = abap_true
                     ) into table address->communication-fax-fax assigning <fax>.

      address->communication-fax-current_state = zcl_cmd_util=>mode-change.

    endif.
  endmethod.


  method add_mobile_number.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table address->communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method add_phone_number.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table address->communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method add_webpage.
    assign address->communication-uri-uri[ contact-data-uri = i_url
                                           contact-data-uri_type = 'HPG' ] to field-symbol(<url>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-uri = i_url
                      contact-data-std_no = i_standard
                      contact-data-uri_type = 'HPG'
                     ) into table address->communication-uri-uri assigning <url>.
    endif.
  endmethod.


  method change_email.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method change_fax_number.
    assign address->communication-fax-fax[ contact-data-fax = i_fax_old
                                          contact-data-extension = i_extension_old ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-modify.
      <fax>-contact-data-fax = i_fax.
      <fax>-contact-data-extension = i_extension.
      <fax>-contact-data-std_no = i_standard.
      clear: <fax>-contact-data-fax_no,
             <fax>-contact-data-sender_no.
      <fax>-contact-datax-fax = abap_true.
      <fax>-contact-datax-fax_no = abap_true.
      <fax>-contact-datax-extension = abap_true.
      <fax>-contact-datax-std_no = abap_true.
      <fax>-contact-datax-sender_no = abap_true.

      if i_country is supplied.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.

      endif.
    endif.
  endmethod.


  method change_mobile_number.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone_old ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_cmd_util=>phone_type-mobile.
      <phone>-contact-data-std_recip   = abap_true. "SMS.
      <phone>-contact-data-std_no = i_standard.
      if i_country is supplied.
        <phone>-contact-data-country = i_country.
      endif.
    endif.

  endmethod.


  method change_phone_number.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone_old
                                              contact-data-extension = i_extension_old ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-modify.
      <phone>-contact-data-telephone = i_phone.
      <phone>-contact-data-r_3_user  = zcl_cmd_util=>phone_type-fixed.
      <phone>-contact-data-std_recip   = abap_false. "SMS.
      <phone>-contact-data-std_no = i_standard.
      if i_country is supplied.
        <phone>-contact-data-country = i_country.
      endif.
    endif.

  endmethod.


  method change_webpage.
    assign address->communication-uri-uri[ contact-data-uri = i_url_old
                                           contact-data-uri_type = 'HPG' ] to field-symbol(<url>).
    if sy-subrc eq 0.
      <url>-contact-task = zcl_cmd_util=>mode-modify.
      <url>-contact-data-uri = i_url.
      <url>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method delete_email.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_fax_number.
    assign address->communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_mobile_number.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_phone_number.

    assign address->communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method delete_webpage.
    assign address->communication-uri-uri[ contact-data-uri = i_url
                                           contact-data-uri_type = 'HPG' ] to field-symbol(<url>).
    if sy-subrc eq 0.
      <url>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method get_standard_email.
    assign address->communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method get_standard_fax_number.
    assign address->communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method get_standard_mobile_number.
    assign address->communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method get_standard_phone_number.
    assign address->communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method get_standard_webpage.
    assign address->communication-uri-uri[ contact-data-uri_type = 'HPG'
                                           contact-data-std_no = abap_true ] to field-symbol(<url>).
    if sy-subrc eq 0.
      e_url =  <url>-contact-data-uri.
    else.
      assign address->communication-uri-uri[ contact-data-uri_type = 'HPG' ] to <url>.
      if sy-subrc eq 0.
        e_url =  <url>-contact-data-uri.
      endif.
    endif.

  endmethod.


  method set_address_id.
    address->postal-data-address_id = i_address_id. address->postal-datax-address_id = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_addr_group.
    address->postal-data-addr_group = i_addr_group. address->postal-datax-addr_group = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_addr_vers.
    address->postal-data-addr_vers = i_addr_vers. address->postal-datax-addr_vers = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_building.
    address->postal-data-building = i_building. address->postal-datax-building = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_chckstatus.
    address->postal-data-chckstatus = i_chckstatus. address->postal-datax-chckstatus = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_city.
    address->postal-data-city = i_city. address->postal-datax-city = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_city_no.
    address->postal-data-city_no = i_city_no. address->postal-datax-city_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_comm_type.
    address->postal-data-comm_type = i_comm_type. address->postal-datax-comm_type = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_conv_name.
    address->postal-data-conv_name = i_conv_name. address->postal-datax-conv_name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_country.
    address->postal-data-country = i_country. address->postal-datax-country = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_countryiso.
    address->postal-data-countryiso = i_countryiso. address->postal-datax-countryiso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_county.
    address->postal-data-county = i_county. address->postal-datax-county = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_county_code.
    address->postal-data-county_code = i_county_code. address->postal-datax-county_code = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_c_o_name.
    address->postal-data-c_o_name = i_c_o_name. address->postal-datax-c_o_name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_data.
    address = i_address.
    remarks ?= zcl_cmd_remarks=>create_instance(
               i_extension_id = extension_id
               i_data         =  ref #( address->remark ) ).
  endmethod.


  method set_deliv_dis.
    address->postal-data-deliv_dis = i_deliv_dis. address->postal-datax-deliv_dis = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_deli_serv_number.
    address->postal-data-deli_serv_number = i_deli_serv_number. address->postal-datax-deli_serv_number = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_deli_serv_type.
    address->postal-data-deli_serv_type = i_deli_serv_type. address->postal-datax-deli_serv_type = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_distrct_no.
    address->postal-data-distrct_no = i_distrct_no. address->postal-datax-distrct_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_district.
    address->postal-data-district = i_district. address->postal-datax-district = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_dont_use_p.
    address->postal-data-dont_use_p = i_dont_use_p. address->postal-datax-dont_use_p = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_dont_use_s.
    address->postal-data-dont_use_s = i_dont_use_s. address->postal-datax-dont_use_s = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_extens_1.
    address->postal-data-extens_1 = i_extens_1. address->postal-datax-extens_1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_extens_2.
    address->postal-data-extens_2 = i_extens_2. address->postal-datax-extens_2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_floor.
    address->postal-data-floor = i_floor. address->postal-datax-floor = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_from_date.
    address->postal-data-from_date = i_from_date. address->postal-datax-from_date = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_homecityno.
    address->postal-data-homecityno = i_homecityno. address->postal-datax-homecityno = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_home_city.
    address->postal-data-home_city = i_home_city. address->postal-datax-home_city = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_house_no.
    address->postal-data-house_no = i_house_no. address->postal-datax-house_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_house_no2.
    address->postal-data-house_no2 = i_house_no2. address->postal-datax-house_no2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_house_no3.
    address->postal-data-house_no3 = i_house_no3. address->postal-datax-house_no3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_langu.
    address->postal-data-langu = i_langu. address->postal-datax-langu = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_langucriso.
    address->postal-data-langucriso = i_langucriso. address->postal-datax-langucriso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_langu_cr.
    address->postal-data-langu_cr = i_langu_cr. address->postal-datax-langu_cr = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_langu_iso.
    address->postal-data-langu_iso = i_langu_iso. address->postal-datax-langu_iso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_location.
    address->postal-data-location = i_location. address->postal-datax-location = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_name.
    address->postal-data-name = i_name. address->postal-datax-name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_name_2.
    address->postal-data-name_2 = i_name_2. address->postal-datax-name_2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_name_3.
    address->postal-data-name_3 = i_name_3. address->postal-datax-name_3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_name_4.
    address->postal-data-name_4 = i_name_4. address->postal-datax-name_4 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_pboxcit_no.
    address->postal-data-pboxcit_no = i_pboxcit_no. address->postal-datax-pboxcit_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_pcode1_ext.
    address->postal-data-pcode1_ext = i_pcode1_ext. address->postal-datax-pcode1_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_pcode2_ext.
    address->postal-data-pcode2_ext = i_pcode2_ext. address->postal-datax-pcode2_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_pcode3_ext.
    address->postal-data-pcode3_ext = i_pcode3_ext. address->postal-datax-pcode3_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_pobox_ctry.
    address->postal-data-pobox_ctry = i_pobox_ctry. address->postal-datax-pobox_ctry = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_postl_cod1.
    address->postal-data-postl_cod1 = i_postl_cod1. address->postal-datax-postl_cod1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_postl_cod2.
    address->postal-data-postl_cod2 = i_postl_cod2. address->postal-datax-postl_cod2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_postl_cod3.
    address->postal-data-postl_cod3 = i_postl_cod3. address->postal-datax-postl_cod3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_box.
    address->postal-data-po_box = i_po_box. address->postal-datax-po_box = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_box_cit.
    address->postal-data-po_box_cit = i_po_box_cit. address->postal-datax-po_box_cit = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_box_lobby.
    address->postal-data-po_box_lobby = i_po_box_lobby. address->postal-datax-po_box_lobby = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_box_reg.
    address->postal-data-po_box_reg = i_po_box_reg. address->postal-datax-po_box_reg = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_ctryiso.
    address->postal-data-po_ctryiso = i_po_ctryiso. address->postal-datax-po_ctryiso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_po_w_o_no.
    address->postal-data-po_w_o_no = i_po_w_o_no. address->postal-datax-po_w_o_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_regiogroup.
    address->postal-data-regiogroup = i_regiogroup. address->postal-datax-regiogroup = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_region.
    address->postal-data-region = i_region. address->postal-datax-region = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_room_no.
    address->postal-data-room_no = i_room_no. address->postal-datax-room_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_sort1.
    address->postal-data-sort1 = i_sort1. address->postal-datax-sort1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_sort2.
    address->postal-data-sort2 = i_sort2. address->postal-datax-sort2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_street.
    address->postal-data-street = i_street. address->postal-datax-street = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_street_no.
    address->postal-data-street_no = i_street_no. address->postal-datax-street_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_str_abbr.
    address->postal-data-str_abbr = i_str_abbr. address->postal-datax-str_abbr = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_str_suppl1.
    address->postal-data-str_suppl1 = i_str_suppl1. address->postal-datax-str_suppl1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_str_suppl2.
    address->postal-data-str_suppl2 = i_str_suppl2. address->postal-datax-str_suppl2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_str_suppl3.
    address->postal-data-str_suppl3 = i_str_suppl3. address->postal-datax-str_suppl3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_taxjurcode.
    address->postal-data-taxjurcode = i_taxjurcode. address->postal-datax-taxjurcode = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_time_zone.
    address->postal-data-time_zone = i_time_zone. address->postal-datax-time_zone = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_title.
    address->postal-data-title = i_title. address->postal-datax-title = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_township.
    address->postal-data-township = i_township. address->postal-datax-township = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_township_code.
    address->postal-data-township_code = i_township_code. address->postal-datax-township_code = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_to_date.
    address->postal-data-to_date = i_to_date. address->postal-datax-to_date = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method set_transpzone.
    address->postal-data-transpzone = i_transpzone. address->postal-datax-transpzone = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.
  method create_instance.
    if i_extension_id is initial.
      r_address = new #( ).
    else.
      data: subclass type ref to object.
      try.
          data(sublcass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-address ).
          create object subclass type (sublcass_abs_name)
           exporting
            i_extension_id  = i_extension_id.
          r_address ?= subclass.
        catch zcx_cmd_no_extension.
          r_address = new #( ).
      endtry.
    endif.
  endmethod.

  method constructor.
    extension_id = i_extension_id.
  endmethod.

endclass.
