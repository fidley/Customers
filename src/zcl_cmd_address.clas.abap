class ZCL_CMD_ADDRESS definition
  public
  final
  create private

  global friends ZCL_CMD_CUSTOMER .

public section.

  data REMARKS type ref to ZCL_CMD_REMARKS .

  methods SET_DATA
    importing
      !I_ADDRESS type ref to CVIS_EI_ADDRESS1 .
  methods SET_ADDR_VERS
    importing
      value(I_ADDR_VERS) type AD_NATION .
  methods SET_FROM_DATE
    importing
      value(I_FROM_DATE) type AD_DATE_FR .
  methods SET_TO_DATE
    importing
      value(I_TO_DATE) type AD_DATE_TO .
  methods SET_TITLE
    importing
      value(I_TITLE) type AD_TITLE .
  methods SET_NAME
    importing
      value(I_NAME) type AD_NAME1 .
  methods SET_NAME_2
    importing
      value(I_NAME_2) type AD_NAME2 .
  methods SET_NAME_3
    importing
      value(I_NAME_3) type AD_NAME3 .
  methods SET_NAME_4
    importing
      value(I_NAME_4) type AD_NAME4 .
  methods SET_CONV_NAME
    importing
      value(I_CONV_NAME) type AD_NAMETXT .
  methods SET_C_O_NAME
    importing
      value(I_C_O_NAME) type AD_NAME_CO .
  methods SET_CITY
    importing
      value(I_CITY) type AD_CITY1 .
  methods SET_DISTRICT
    importing
      value(I_DISTRICT) type AD_CITY2 .
  methods SET_CITY_NO
    importing
      value(I_CITY_NO) type AD_CITYNUM .
  methods SET_DISTRCT_NO
    importing
      value(I_DISTRCT_NO) type AD_CITYPNM .
  methods SET_CHCKSTATUS
    importing
      value(I_CHCKSTATUS) type AD_CHECKST .
  methods SET_REGIOGROUP
    importing
      value(I_REGIOGROUP) type REGIOGROUP .
  methods SET_POSTL_COD1
    importing
      value(I_POSTL_COD1) type AD_PSTCD1 .
  methods SET_POSTL_COD2
    importing
      value(I_POSTL_COD2) type AD_PSTCD2 .
  methods SET_POSTL_COD3
    importing
      value(I_POSTL_COD3) type AD_PSTCD3 .
  methods SET_PCODE1_EXT
    importing
      value(I_PCODE1_EXT) type AD_PST1XT .
  methods SET_PCODE2_EXT
    importing
      value(I_PCODE2_EXT) type AD_PST2XT .
  methods SET_PCODE3_EXT
    importing
      value(I_PCODE3_EXT) type AD_PST3XT .
  methods SET_PO_BOX
    importing
      value(I_PO_BOX) type AD_POBX .
  methods SET_PO_W_O_NO
    importing
      value(I_PO_W_O_NO) type AD_POBXNUM .
  methods SET_PO_BOX_CIT
    importing
      value(I_PO_BOX_CIT) type AD_POBXLOC .
  methods SET_PBOXCIT_NO
    importing
      value(I_PBOXCIT_NO) type AD_CIT2NUM .
  methods SET_PO_BOX_REG
    importing
      value(I_PO_BOX_REG) type AD_POBXREG .
  methods SET_POBOX_CTRY
    importing
      value(I_POBOX_CTRY) type AD_POBXCTY .
  methods SET_PO_CTRYISO
    importing
      value(I_PO_CTRYISO) type INTCA .
  methods SET_DELIV_DIS
    importing
      value(I_DELIV_DIS) type AD_PSTLAR .
  methods SET_TRANSPZONE
    importing
      value(I_TRANSPZONE) type LZONE .
  methods SET_STREET
    importing
      value(I_STREET) type AD_STREET .
  methods SET_STREET_NO
    importing
      value(I_STREET_NO) type AD_STRNUM .
  methods SET_STR_ABBR
    importing
      value(I_STR_ABBR) type AD_STRABBR .
  methods SET_HOUSE_NO
    importing
      value(I_HOUSE_NO) type AD_HSNM1 .
  methods SET_HOUSE_NO2
    importing
      value(I_HOUSE_NO2) type AD_HSNM2 .
  methods SET_HOUSE_NO3
    importing
      value(I_HOUSE_NO3) type AD_HSNM3 .
  methods SET_STR_SUPPL1
    importing
      value(I_STR_SUPPL1) type AD_STRSPP1 .
  methods SET_STR_SUPPL2
    importing
      value(I_STR_SUPPL2) type AD_STRSPP2 .
  methods SET_STR_SUPPL3
    importing
      value(I_STR_SUPPL3) type AD_STRSPP3 .
  methods SET_LOCATION
    importing
      value(I_LOCATION) type AD_LCTN .
  methods SET_BUILDING
    importing
      value(I_BUILDING) type AD_BLDNG .
  methods SET_FLOOR
    importing
      value(I_FLOOR) type AD_FLOOR .
  methods SET_ROOM_NO
    importing
      value(I_ROOM_NO) type AD_ROOMNUM .
  methods SET_COUNTRY
    importing
      value(I_COUNTRY) type LAND1 .
  methods SET_COUNTRYISO
    importing
      value(I_COUNTRYISO) type INTCA .
  methods SET_LANGU
    importing
      value(I_LANGU) type SPRAS .
  methods SET_LANGU_ISO
    importing
      value(I_LANGU_ISO) type LAISO .
  methods SET_REGION
    importing
      value(I_REGION) type REGIO .
  methods SET_SORT1
    importing
      value(I_SORT1) type AD_SORT1 .
  methods SET_SORT2
    importing
      value(I_SORT2) type AD_SORT2 .
  methods SET_EXTENS_1
    importing
      value(I_EXTENS_1) type AD_EXTENS1 .
  methods SET_EXTENS_2
    importing
      value(I_EXTENS_2) type AD_EXTENS2 .
  methods SET_TIME_ZONE
    importing
      value(I_TIME_ZONE) type AD_TZONE .
  methods SET_TAXJURCODE
    importing
      value(I_TAXJURCODE) type AD_TXJCD .
  methods SET_ADDRESS_ID
    importing
      value(I_ADDRESS_ID) type AD_ADDR_ID .
  methods SET_LANGU_CR
    importing
      value(I_LANGU_CR) type AD_LANGUCR .
  methods SET_LANGUCRISO
    importing
      value(I_LANGUCRISO) type LAISO .
  methods SET_COMM_TYPE
    importing
      value(I_COMM_TYPE) type AD_COMM .
  methods SET_ADDR_GROUP
    importing
      value(I_ADDR_GROUP) type AD_GROUP .
  methods SET_HOME_CITY
    importing
      value(I_HOME_CITY) type AD_CITY3 .
  methods SET_HOMECITYNO
    importing
      value(I_HOMECITYNO) type AD_CITYHNM .
  methods SET_DONT_USE_S
    importing
      value(I_DONT_USE_S) type AD_NO_USES .
  methods SET_DONT_USE_P
    importing
      value(I_DONT_USE_P) type AD_NO_USEP .
  methods SET_PO_BOX_LOBBY
    importing
      value(I_PO_BOX_LOBBY) type AD_PO_BOX_LBY .
  methods SET_DELI_SERV_TYPE
    importing
      value(I_DELI_SERV_TYPE) type AD_DELIVERY_SERVICE_TYPE .
  methods SET_DELI_SERV_NUMBER
    importing
      value(I_DELI_SERV_NUMBER) type AD_DELIVERY_SERVICE_NUMBER .
  methods SET_COUNTY_CODE
    importing
      value(I_COUNTY_CODE) type AD_CNTYNUM .
  methods SET_COUNTY
    importing
      value(I_COUNTY) type AD_COUNTY .
  methods SET_TOWNSHIP_CODE
    importing
      value(I_TOWNSHIP_CODE) type AD_TWSHPNUM .
  methods SET_TOWNSHIP
    importing
      value(I_TOWNSHIP) type AD_TOWNSHIP .
  methods ADD_PHONE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_PHONE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional .
  methods CHANGE_PHONE_NUMBER
    importing
      value(I_PHONE_OLD) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION_OLD) type BAPIADTEL-EXTENSION optional
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods ADD_MOBILE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_MOBILE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE .
  methods CHANGE_MOBILE_NUMBER
    importing
      value(I_PHONE_OLD) type BAPIADTEL-TELEPHONE
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods ADD_FAX_NUMBER
    importing
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional
      value(I_STANDARD) type BAPIADFAX-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_FAX_NUMBER
    importing
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional .
  methods CHANGE_FAX_NUMBER
    importing
      value(I_FAX_OLD) type BAPIADFAX-FAX
      value(I_EXTENSION_OLD) type BAPIADFAX-EXTENSION optional
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional
      value(I_STANDARD) type BAPIADFAX-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods ADD_EMAIL
    importing
      value(I_EMAIL) type BAPIADSMTP-E_MAIL
      value(I_STANDARD) type BAPIADSMTP-STD_NO default ABAP_TRUE .
  methods DELETE_EMAIL
    importing
      value(I_EMAIL) type BAPIADSMTP-E_MAIL .
  methods CHANGE_EMAIL
    importing
      value(I_EMAIL_OLD) type BAPIADSMTP-E_MAIL
      value(I_EMAIL) type BAPIADSMTP-E_MAIL
      value(I_STANDARD) type BAPIADSMTP-STD_NO default ABAP_TRUE .
  methods GET_STANDARD_PHONE_NUMBER
    exporting
      value(E_PHONE) type BAPIADTEL-TELEPHONE
      value(E_EXTENSION) type BAPIADTEL-EXTENSION
      value(E_COUNTRY) type BAPIADTEL-COUNTRY .
  methods GET_STANDARD_MOBILE_NUMBER
    exporting
      value(E_PHONE) type BAPIADTEL-TELEPHONE
      value(E_COUNTRY) type BAPIADTEL-COUNTRY .
  methods GET_STANDARD_FAX_NUMBER
    exporting
      value(E_FAX) type BAPIADFAX-FAX
      value(E_EXTENSION) type BAPIADFAX-EXTENSION
      value(E_COUNTRY) type BAPIADFAX-COUNTRY .
  methods GET_STANDARD_EMAIL
    exporting
      value(E_EMAIL) type BAPIADSMTP-E_MAIL .
  methods ADD_WEBPAGE
    importing
      value(I_URL) type AD_URI
      value(I_STANDARD) type BAPIADURI-STD_NO default ABAP_TRUE .
  methods DELETE_WEBPAGE
    importing
      value(I_URL) type AD_URI .
  methods CHANGE_WEBPAGE
    importing
      value(I_URL_OLD) type AD_URI
      value(I_URL) type AD_URI
      value(I_STANDARD) type BAPIADSMTP-STD_NO default ABAP_TRUE .
  methods GET_STANDARD_WEBPAGE
    exporting
      value(E_URL) type AD_URI .
  protected section.
  private section.
    data: address type ref to cvis_ei_address1.
ENDCLASS.



CLASS ZCL_CMD_ADDRESS IMPLEMENTATION.


  method ADD_EMAIL.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table address->communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method ADD_FAX_NUMBER.
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


  method ADD_MOBILE_NUMBER.
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


  method ADD_PHONE_NUMBER.
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


  method ADD_WEBPAGE.
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


  method CHANGE_EMAIL.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method CHANGE_FAX_NUMBER.
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
      <fax>-contact-datax-Sender_no = abap_true.

      if i_country is supplied.
        <fax>-contact-data-country = i_country.
        <fax>-contact-datax-country = abap_true.

      endif.
    endif.
  endmethod.


  method CHANGE_MOBILE_NUMBER.
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


  method CHANGE_PHONE_NUMBER.
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


  method CHANGE_WEBPAGE.
    assign address->communication-uri-uri[ contact-data-uri = i_url_old
                                           contact-data-uri_type = 'HPG' ] to field-symbol(<url>).
    if sy-subrc eq 0.
      <url>-contact-task = zcl_cmd_util=>mode-modify.
      <url>-contact-data-uri = i_url.
      <url>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method DELETE_EMAIL.
    assign address->communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_FAX_NUMBER.
    assign address->communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_MOBILE_NUMBER.
    assign address->communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_PHONE_NUMBER.

    assign address->communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method DELETE_WEBPAGE.
    assign address->communication-uri-uri[ contact-data-uri = i_url
                                           contact-data-uri_type = 'HPG' ] to field-symbol(<url>).
    if sy-subrc eq 0.
      <url>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method GET_STANDARD_EMAIL.
    assign address->communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method GET_STANDARD_FAX_NUMBER.
    assign address->communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_MOBILE_NUMBER.
    assign address->communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_PHONE_NUMBER.
    assign address->communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_WEBPAGE.
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


  method SET_ADDRESS_ID.
    address->postal-data-address_id = i_address_id. address->postal-datax-address_id = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_ADDR_GROUP.
    address->postal-data-addr_group = i_addr_group. address->postal-datax-addr_group = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_ADDR_VERS.
    address->postal-data-addr_vers = i_addr_vers. address->postal-datax-addr_vers = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_BUILDING.
    address->postal-data-building = i_building. address->postal-datax-building = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_CHCKSTATUS.
    address->postal-data-chckstatus = i_chckstatus. address->postal-datax-chckstatus = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_CITY.
    address->postal-data-city = i_city. address->postal-datax-city = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_CITY_NO.
    address->postal-data-city_no = i_city_no. address->postal-datax-city_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_COMM_TYPE.
    address->postal-data-comm_type = i_comm_type. address->postal-datax-comm_type = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_CONV_NAME.
    address->postal-data-conv_name = i_conv_name. address->postal-datax-conv_name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_COUNTRY.
    address->postal-data-country = i_country. address->postal-datax-country = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_COUNTRYISO.
    address->postal-data-countryiso = i_countryiso. address->postal-datax-countryiso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_COUNTY.
    address->postal-data-county = i_county. address->postal-datax-county = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_COUNTY_CODE.
    address->postal-data-county_code = i_county_code. address->postal-datax-county_code = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_C_O_NAME.
    address->postal-data-c_o_name = i_c_o_name. address->postal-datax-c_o_name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DATA.
    address = i_address.
    remarks = new zcl_cmd_remarks( ref #( address->remark ) ).
  endmethod.


  method SET_DELIV_DIS.
    address->postal-data-deliv_dis = i_deliv_dis. address->postal-datax-deliv_dis = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DELI_SERV_NUMBER.
    address->postal-data-deli_serv_number = i_deli_serv_number. address->postal-datax-deli_serv_number = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DELI_SERV_TYPE.
    address->postal-data-deli_serv_type = i_deli_serv_type. address->postal-datax-deli_serv_type = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DISTRCT_NO.
    address->postal-data-distrct_no = i_distrct_no. address->postal-datax-distrct_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DISTRICT.
    address->postal-data-district = i_district. address->postal-datax-district = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DONT_USE_P.
    address->postal-data-dont_use_p = i_dont_use_p. address->postal-datax-dont_use_p = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_DONT_USE_S.
    address->postal-data-dont_use_s = i_dont_use_s. address->postal-datax-dont_use_s = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_EXTENS_1.
    address->postal-data-extens_1 = i_extens_1. address->postal-datax-extens_1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_EXTENS_2.
    address->postal-data-extens_2 = i_extens_2. address->postal-datax-extens_2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_FLOOR.
    address->postal-data-floor = i_floor. address->postal-datax-floor = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_FROM_DATE.
    address->postal-data-from_date = i_from_date. address->postal-datax-from_date = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_HOMECITYNO.
    address->postal-data-homecityno = i_homecityno. address->postal-datax-homecityno = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_HOME_CITY.
    address->postal-data-home_city = i_home_city. address->postal-datax-home_city = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_HOUSE_NO.
    address->postal-data-house_no = i_house_no. address->postal-datax-house_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_HOUSE_NO2.
    address->postal-data-house_no2 = i_house_no2. address->postal-datax-house_no2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_HOUSE_NO3.
    address->postal-data-house_no3 = i_house_no3. address->postal-datax-house_no3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_LANGU.
    address->postal-data-langu = i_langu. address->postal-datax-langu = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_LANGUCRISO.
    address->postal-data-langucriso = i_langucriso. address->postal-datax-langucriso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_LANGU_CR.
    address->postal-data-langu_cr = i_langu_cr. address->postal-datax-langu_cr = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_LANGU_ISO.
    address->postal-data-langu_iso = i_langu_iso. address->postal-datax-langu_iso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_LOCATION.
    address->postal-data-location = i_location. address->postal-datax-location = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_NAME.
    address->postal-data-name = i_name. address->postal-datax-name = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_NAME_2.
    address->postal-data-name_2 = i_name_2. address->postal-datax-name_2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_NAME_3.
    address->postal-data-name_3 = i_name_3. address->postal-datax-name_3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_NAME_4.
    address->postal-data-name_4 = i_name_4. address->postal-datax-name_4 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PBOXCIT_NO.
    address->postal-data-pboxcit_no = i_pboxcit_no. address->postal-datax-pboxcit_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PCODE1_EXT.
    address->postal-data-pcode1_ext = i_pcode1_ext. address->postal-datax-pcode1_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PCODE2_EXT.
    address->postal-data-pcode2_ext = i_pcode2_ext. address->postal-datax-pcode2_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PCODE3_EXT.
    address->postal-data-pcode3_ext = i_pcode3_ext. address->postal-datax-pcode3_ext = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_POBOX_CTRY.
    address->postal-data-pobox_ctry = i_pobox_ctry. address->postal-datax-pobox_ctry = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_POSTL_COD1.
    address->postal-data-postl_cod1 = i_postl_cod1. address->postal-datax-postl_cod1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_POSTL_COD2.
    address->postal-data-postl_cod2 = i_postl_cod2. address->postal-datax-postl_cod2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_POSTL_COD3.
    address->postal-data-postl_cod3 = i_postl_cod3. address->postal-datax-postl_cod3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_BOX.
    address->postal-data-po_box = i_po_box. address->postal-datax-po_box = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_BOX_CIT.
    address->postal-data-po_box_cit = i_po_box_cit. address->postal-datax-po_box_cit = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_BOX_LOBBY.
    address->postal-data-po_box_lobby = i_po_box_lobby. address->postal-datax-po_box_lobby = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_BOX_REG.
    address->postal-data-po_box_reg = i_po_box_reg. address->postal-datax-po_box_reg = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_CTRYISO.
    address->postal-data-po_ctryiso = i_po_ctryiso. address->postal-datax-po_ctryiso = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_PO_W_O_NO.
    address->postal-data-po_w_o_no = i_po_w_o_no. address->postal-datax-po_w_o_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_REGIOGROUP.
    address->postal-data-regiogroup = i_regiogroup. address->postal-datax-regiogroup = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_REGION.
    address->postal-data-region = i_region. address->postal-datax-region = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_ROOM_NO.
    address->postal-data-room_no = i_room_no. address->postal-datax-room_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_SORT1.
    address->postal-data-sort1 = i_sort1. address->postal-datax-sort1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_SORT2.
    address->postal-data-sort2 = i_sort2. address->postal-datax-sort2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STREET.
    address->postal-data-street = i_street. address->postal-datax-street = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STREET_NO.
    address->postal-data-street_no = i_street_no. address->postal-datax-street_no = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STR_ABBR.
    address->postal-data-str_abbr = i_str_abbr. address->postal-datax-str_abbr = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STR_SUPPL1.
    address->postal-data-str_suppl1 = i_str_suppl1. address->postal-datax-str_suppl1 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STR_SUPPL2.
    address->postal-data-str_suppl2 = i_str_suppl2. address->postal-datax-str_suppl2 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_STR_SUPPL3.
    address->postal-data-str_suppl3 = i_str_suppl3. address->postal-datax-str_suppl3 = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TAXJURCODE.
    address->postal-data-taxjurcode = i_taxjurcode. address->postal-datax-taxjurcode = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TIME_ZONE.
    address->postal-data-time_zone = i_time_zone. address->postal-datax-time_zone = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TITLE.
    address->postal-data-title = i_title. address->postal-datax-title = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TOWNSHIP.
    address->postal-data-township = i_township. address->postal-datax-township = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TOWNSHIP_CODE.
    address->postal-data-township_code = i_township_code. address->postal-datax-township_code = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TO_DATE.
    address->postal-data-to_date = i_to_date. address->postal-datax-to_date = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.


  method SET_TRANSPZONE.
    address->postal-data-transpzone = i_transpzone. address->postal-datax-transpzone = abap_true .
    address->task = zcl_cmd_util=>mode-modify.
  endmethod.
ENDCLASS.
