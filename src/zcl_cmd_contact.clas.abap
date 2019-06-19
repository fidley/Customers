class zcl_cmd_contact definition
  public
  create protected.

  public section.

    data contact type knvp-parnr read-only .
    data customer type knvp-kunnr .
    data mode type zcl_cmd_util=>t_mode read-only .
    data texts type ref to zcl_cmd_texts .

    class-methods create_instance
      importing i_extension_id type guid_32
                i_contact      type knvp-parnr optional
                i_customer     type knvp-kunnr
      returning value(contact) type ref to zcl_cmd_contact
      raising   zcx_cmd_customer.


    "! Manually set all structures and pass them here
    methods set_data
      importing
        !i_full_data type ref to cmds_ei_contacts .
    "! Returns Contact structure which can be added to cmds_ei_contacts_t
    methods get_data
      returning
        value(r_full_data) type ref to cmds_ei_contacts .
    "!Sets mode to "Delete" and clears all structures
    methods delete .
    "! Private addres
    methods set_address_private
      importing
        value(i_address) type cvis_ei_address2 .
    "! Address of Organization
    methods set_address_org
      importing
        value(i_address) type cvis_ei_address1 .
    "! Contact person address
    methods set_address
      importing
        value(i_address) type cvis_ei_address3 .
    methods set_mode
      importing
        !i_mode type zcl_cmd_util=>t_mode .
    methods set_addr_vers
      importing
        value(i_addr_vers) type bapiad3vl-addr_vers .
    methods set_addr_from_date
      importing
        value(i_from_date) type bapiad3vl-from_date .
    methods set_addr_to_date
      importing
        value(i_to_date) type bapiad3vl-to_date .
    methods set_addr_title_p
      importing
        value(i_title_p) type bapiad3vl-title_p .
    methods set_addr_firstname
      importing
        value(i_firstname) type bapiad3vl-firstname .
    methods set_addr_lastname
      importing
        value(i_lastname) type bapiad3vl-lastname .
    methods set_addr_birth_name
      importing
        value(i_birth_name) type bapiad3vl-birth_name .
    methods set_addr_middlename
      importing
        value(i_middlename) type bapiad3vl-middlename .
    methods set_addr_secondname
      importing
        value(i_secondname) type bapiad3vl-secondname .
    methods set_addr_fullname
      importing
        value(i_fullname) type bapiad3vl-fullname .
    methods set_addr_fullname_x
      importing
        value(i_fullname_x) type bapiad3vl-fullname_x .
    methods set_addr_title_aca1
      importing
        value(i_title_aca1) type bapiad3vl-title_aca1 .
    methods set_addr_title_aca2
      importing
        value(i_title_aca2) type bapiad3vl-title_aca2 .
    methods set_addr_prefix1
      importing
        value(i_prefix1) type bapiad3vl-prefix1 .
    methods set_addr_prefix2
      importing
        value(i_prefix2) type bapiad3vl-prefix2 .
    methods set_addr_title_sppl
      importing
        value(i_title_sppl) type bapiad3vl-title_sppl .
    methods set_addr_nickname
      importing
        value(i_nickname) type bapiad3vl-nickname .
    methods set_addr_initials
      importing
        value(i_initials) type bapiad3vl-initials .
    methods set_addr_nameformat
      importing
        value(i_nameformat) type bapiad3vl-nameformat .
    methods set_addr_namcountry
      importing
        value(i_namcountry) type bapiad3vl-namcountry .
    methods set_addr_namctryiso
      importing
        value(i_namctryiso) type bapiad3vl-namctryiso .
    methods set_addr_profession
      importing
        value(i_profession) type bapiad3vl-profession .
    methods set_addr_sex
      importing
        value(i_sex) type bapiad3vl-sex .
    methods set_addr_langu_p
      importing
        value(i_langu_p) type bapiad3vl-langu_p .
    methods set_addr_langup_iso
      importing
        value(i_langup_iso) type bapiad3vl-langup_iso .
    methods set_addr_sort1_p
      importing
        value(i_sort1_p) type bapiad3vl-sort1_p .
    methods set_addr_sort2_p
      importing
        value(i_sort2_p) type bapiad3vl-sort2_p .
    methods set_addr_langu_cr_p
      importing
        value(i_langu_cr_p) type bapiad3vl-langu_cr_p .
    methods set_addr_langucpiso
      importing
        value(i_langucpiso) type bapiad3vl-langucpiso .
    methods set_addr_department
      importing
        value(i_department) type bapiad3vl-department .
    methods set_addr_function
      importing
        value(i_function) type bapiad3vl-function .
    methods set_addr_building_p
      importing
        value(i_building_p) type bapiad3vl-building_p .
    methods set_addr_floor_p
      importing
        value(i_floor_p) type bapiad3vl-floor_p .
    methods set_addr_room_no_p
      importing
        value(i_room_no_p) type bapiad3vl-room_no_p .
    methods set_addr_inits_sig
      importing
        value(i_inits_sig) type bapiad3vl-inits_sig .
    methods set_addr_inhouse_ml
      importing
        value(i_inhouse_ml) type bapiad3vl-inhouse_ml .
    methods set_addr_comm_type
      importing
        value(i_comm_type) type bapiad3vl-comm_type .
    methods set_addr_pers_group
      importing
        value(i_pers_group) type bapiad3vl-pers_group .
    methods set_data_abtnr
      importing
        value(i_abtnr) type abtnr_pa .
    methods set_data_uepar
      importing
        value(i_uepar) type uepar .
    methods set_data_pafkt
      importing
        value(i_pafkt) type pafkt .
    methods set_data_parvo
      importing
        value(i_parvo) type parvo .
    methods set_data_pavip
      importing
        value(i_pavip) type pavip .
    methods set_data_parge
      importing
        value(i_parge) type parge .
    methods set_data_gbdat
      importing
        value(i_gbdat) type gbdat .
    methods set_data_vrtnr
      importing
        value(i_vrtnr) type vtrnr .
    methods set_data_bryth
      importing
        value(i_bryth) type bryth .
    methods set_data_akver
      importing
        value(i_akver) type akver .
    methods set_data_nmail
      importing
        value(i_nmail) type nmail .
    methods set_data_parau
      importing
        value(i_parau) type parau .
    methods set_data_parh1
      importing
        value(i_parh1) type paat1 .
    methods set_data_parh2
      importing
        value(i_parh2) type paat2 .
    methods set_data_parh3
      importing
        value(i_parh3) type paat3 .
    methods set_data_parh4
      importing
        value(i_parh4) type paat4 .
    methods set_data_parh5
      importing
        value(i_parh5) type paat5 .
    methods set_data_moab1
      importing
        value(i_moab1) type bemoab1 .
    methods set_data_mobi1
      importing
        value(i_mobi1) type bemobi1 .
    methods set_data_moab2
      importing
        value(i_moab2) type bemoab2 .
    methods set_data_mobi2
      importing
        value(i_mobi2) type bemobi2 .
    methods set_data_diab1
      importing
        value(i_diab1) type bediab1 .
    methods set_data_dibi1
      importing
        value(i_dibi1) type bedibi1 .
    methods set_data_diab2
      importing
        value(i_diab2) type bediab2 .
    methods set_data_dibi2
      importing
        value(i_dibi2) type bedibi2 .
    methods set_data_miab1
      importing
        value(i_miab1) type bemiab1 .
    methods set_data_mibi1
      importing
        value(i_mibi1) type bemibi1 .
    methods set_data_miab2
      importing
        value(i_miab2) type bemiab2 .
    methods set_data_mibi2
      importing
        value(i_mibi2) type bemibi2 .
    methods set_data_doab1
      importing
        value(i_doab1) type bedoab1 .
    methods set_data_dobi1
      importing
        value(i_dobi1) type bedobi1 .
    methods set_data_doab2
      importing
        value(i_doab2) type bedoab2 .
    methods set_data_dobi2
      importing
        value(i_dobi2) type bedobi2 .
    methods set_data_frab1
      importing
        value(i_frab1) type befrab1 .
    methods set_data_frbi1
      importing
        value(i_frbi1) type befrbi1 .
    methods set_data_frab2
      importing
        value(i_frab2) type befrab2 .
    methods set_data_frbi2
      importing
        value(i_frbi2) type befrbi2 .
    methods set_data_saab1
      importing
        value(i_saab1) type besaab1 .
    methods set_data_sabi1
      importing
        value(i_sabi1) type besabi1 .
    methods set_data_saab2
      importing
        value(i_saab2) type besaab2 .
    methods set_data_sabi2
      importing
        value(i_sabi2) type besabi2 .
    methods set_data_soab1
      importing
        value(i_soab1) type besoab1 .
    methods set_data_sobi1
      importing
        value(i_sobi1) type besobi1 .
    methods set_data_soab2
      importing
        value(i_soab2) type besoab2 .
    methods set_data_sobi2
      importing
        value(i_sobi2) type besobi2 .
    methods set_data_pakn1
      importing
        value(i_pakn1) type paat6 .
    methods set_data_pakn2
      importing
        value(i_pakn2) type paat7 .
    methods set_data_pakn3
      importing
        value(i_pakn3) type paat8 .
    methods set_data_pakn4
      importing
        value(i_pakn4) type paat9 .
    methods set_data_pakn5
      importing
        value(i_pakn5) type paat0 .
    methods set_data_sortl
      importing
        value(i_sortl) type sortl .
    methods set_data_famst
      importing
        value(i_famst) type famst .
    methods set_data_cvp_xblck_k
      importing
        value(i_cvp_xblck_k) type cvp_xblck .
    methods set_addr_org_addr_vers
      importing
        value(i_addr_vers) type ad_nation .
    methods set_addr_org_from_date
      importing
        value(i_from_date) type ad_date_fr .
    methods set_addr_org_to_date
      importing
        value(i_to_date) type ad_date_to .
    methods set_addr_org_title
      importing
        value(i_title) type ad_title .
    methods set_addr_org_name
      importing
        value(i_name) type ad_name1 .
    methods set_addr_org_name_2
      importing
        value(i_name_2) type ad_name2 .
    methods set_addr_org_name_3
      importing
        value(i_name_3) type ad_name3 .
    methods set_addr_org_name_4
      importing
        value(i_name_4) type ad_name4 .
    methods set_addr_org_conv_name
      importing
        value(i_conv_name) type ad_nametxt .
    methods set_addr_org_c_o_name
      importing
        value(i_c_o_name) type ad_name_co .
    methods set_addr_org_city
      importing
        value(i_city) type ad_city1 .
    methods set_addr_org_district
      importing
        value(i_district) type ad_city2 .
    methods set_addr_org_city_no
      importing
        value(i_city_no) type ad_citynum .
    methods set_addr_org_distrct_no
      importing
        value(i_distrct_no) type ad_citypnm .
    methods set_addr_org_chckstatus
      importing
        value(i_chckstatus) type ad_checkst .
    methods set_addr_org_regiogroup
      importing
        value(i_regiogroup) type regiogroup .
    methods set_addr_org_postl_cod1
      importing
        value(i_postl_cod1) type ad_pstcd1 .
    methods set_addr_org_postl_cod2
      importing
        value(i_postl_cod2) type ad_pstcd2 .
    methods set_addr_org_postl_cod3
      importing
        value(i_postl_cod3) type ad_pstcd3 .
    methods set_addr_org_pcode1_ext
      importing
        value(i_pcode1_ext) type ad_pst1xt .
    methods set_addr_org_pcode2_ext
      importing
        value(i_pcode2_ext) type ad_pst2xt .
    methods set_addr_org_pcode3_ext
      importing
        value(i_pcode3_ext) type ad_pst3xt .
    methods set_addr_org_po_box
      importing
        value(i_po_box) type ad_pobx .
    methods set_addr_org_po_w_o_no
      importing
        value(i_po_w_o_no) type ad_pobxnum .
    methods set_addr_org_po_box_cit
      importing
        value(i_po_box_cit) type ad_pobxloc .
    methods set_addr_org_pboxcit_no
      importing
        value(i_pboxcit_no) type ad_cit2num .
    methods set_addr_org_po_box_reg
      importing
        value(i_po_box_reg) type ad_pobxreg .
    methods set_addr_org_pobox_ctry
      importing
        value(i_pobox_ctry) type ad_pobxcty .
    methods set_addr_org_po_ctryiso
      importing
        value(i_po_ctryiso) type intca .
    methods set_addr_org_deliv_dis
      importing
        value(i_deliv_dis) type ad_pstlar .
    methods set_addr_org_transpzone
      importing
        value(i_transpzone) type lzone .
    methods set_addr_org_street
      importing
        value(i_street) type ad_street .
    methods set_addr_org_street_no
      importing
        value(i_street_no) type ad_strnum .
    methods set_addr_org_str_abbr
      importing
        value(i_str_abbr) type ad_strabbr .
    methods set_addr_org_house_no
      importing
        value(i_house_no) type ad_hsnm1 .
    methods set_addr_org_house_no2
      importing
        value(i_house_no2) type ad_hsnm2 .
    methods set_addr_org_house_no3
      importing
        value(i_house_no3) type ad_hsnm3 .
    methods set_addr_org_str_suppl1
      importing
        value(i_str_suppl1) type ad_strspp1 .
    methods set_addr_org_str_suppl2
      importing
        value(i_str_suppl2) type ad_strspp2 .
    methods set_addr_org_str_suppl3
      importing
        value(i_str_suppl3) type ad_strspp3 .
    methods set_addr_org_location
      importing
        value(i_location) type ad_lctn .
    methods set_addr_org_building
      importing
        value(i_building) type ad_bldng .
    methods set_addr_org_floor
      importing
        value(i_floor) type ad_floor .
    methods set_addr_org_room_no
      importing
        value(i_room_no) type ad_roomnum .
    methods set_addr_org_country
      importing
        value(i_country) type land1 .
    methods set_addr_org_countryiso
      importing
        value(i_countryiso) type intca .
    methods set_addr_org_langu
      importing
        value(i_langu) type spras .
    methods set_addr_org_langu_iso
      importing
        value(i_langu_iso) type laiso .
    methods set_addr_org_region
      importing
        value(i_region) type regio .
    methods set_addr_org_sort1
      importing
        value(i_sort1) type ad_sort1 .
    methods set_addr_org_sort2
      importing
        value(i_sort2) type ad_sort2 .
    methods set_addr_org_extens_1
      importing
        value(i_extens_1) type ad_extens1 .
    methods set_addr_org_extens_2
      importing
        value(i_extens_2) type ad_extens2 .
    methods set_addr_org_time_zone
      importing
        value(i_time_zone) type ad_tzone .
    methods set_addr_org_taxjurcode
      importing
        value(i_taxjurcode) type ad_txjcd .
    methods set_addr_org_address_id
      importing
        value(i_address_id) type ad_addr_id .
    methods set_addr_org_langu_cr
      importing
        value(i_langu_cr) type ad_langucr .
    methods set_addr_org_langucriso
      importing
        value(i_langucriso) type laiso .
    methods set_addr_org_comm_type
      importing
        value(i_comm_type) type ad_comm .
    methods set_addr_org_addr_group
      importing
        value(i_addr_group) type ad_group .
    methods set_addr_org_home_city
      importing
        value(i_home_city) type ad_city3 .
    methods set_addr_org_homecityno
      importing
        value(i_homecityno) type ad_cityhnm .
    methods set_addr_org_dont_use_s
      importing
        value(i_dont_use_s) type ad_no_uses .
    methods set_addr_org_dont_use_p
      importing
        value(i_dont_use_p) type ad_no_usep .
    methods set_addr_org_po_box_lobby
      importing
        value(i_po_box_lobby) type ad_po_box_lby .
    methods set_addr_org_deli_serv_type
      importing
        value(i_deli_serv_type) type ad_delivery_service_type .
    methods set_addr_org_deli_serv_number
      importing
        value(i_deli_serv_number) type ad_delivery_service_number .
    methods set_addr_org_county_code
      importing
        value(i_county_code) type ad_cntynum .
    methods set_addr_org_county
      importing
        value(i_county) type ad_county .
    methods set_addr_org_township_code
      importing
        value(i_township_code) type ad_twshpnum .
    methods set_addr_org_township
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
    methods add_business_phone_number
      importing
        value(i_phone)     type bapiadtel-telephone
        value(i_extension) type bapiadtel-extension optional
        value(i_standard)  type bapiadtel-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods delete_business_phone_number
      importing
        value(i_phone)     type bapiadtel-telephone
        value(i_extension) type bapiadtel-extension optional .
    methods change_business_phone_number
      importing
        value(i_phone_old)     type bapiadtel-telephone
        value(i_extension_old) type bapiadtel-extension optional
        value(i_phone)         type bapiadtel-telephone
        value(i_extension)     type bapiadtel-extension optional
        value(i_standard)      type bapiadtel-std_no default abap_true
        value(i_country)       type bapiadtel-country optional .
    methods get_standard_bus_phone_number
      exporting
        value(e_phone)     type bapiadtel-telephone
        value(e_extension) type bapiadtel-extension
        value(e_country)   type bapiadtel-country .
    methods get_standard_bus_mobile_number
      exporting
        value(e_phone)   type bapiadtel-telephone
        value(e_country) type bapiadtel-country .
    methods get_standard_bus_fax_number
      exporting
        value(e_fax)       type bapiadfax-fax
        value(e_extension) type bapiadfax-extension
        value(e_country)   type bapiadfax-country .
    methods get_standard_bus_email
      exporting
        value(e_email) type bapiadsmtp-e_mail .
    methods add_business_mobile_number
      importing
        value(i_phone)    type bapiadtel-telephone
        value(i_standard) type bapiadtel-std_no default abap_true
        value(i_country)  type bapiadtel-country optional .
    methods delete_business_mobile_number
      importing
        value(i_phone) type bapiadtel-telephone .
    methods change_business_mobile_number
      importing
        value(i_phone_old) type bapiadtel-telephone
        value(i_phone)     type bapiadtel-telephone
        value(i_standard)  type bapiadtel-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods add_business_fax_number
      importing
        value(i_fax)       type bapiadfax-fax
        value(i_extension) type bapiadfax-extension optional
        value(i_standard)  type bapiadfax-std_no default abap_true
        value(i_country)   type bapiadtel-country optional .
    methods delete_business_fax_number
      importing
        value(i_fax)       type bapiadfax-fax
        value(i_extension) type bapiadfax-extension optional .
    methods change_business_fax_number
      importing
        value(i_fax_old)       type bapiadfax-fax
        value(i_extension_old) type bapiadfax-extension optional
        value(i_fax)           type bapiadfax-fax
        value(i_extension)     type bapiadfax-extension optional
        value(i_standard)      type bapiadfax-std_no default abap_true
        value(i_country)       type bapiadtel-country optional .
    methods add_business_email
      importing
        value(i_email)    type bapiadsmtp-e_mail
        value(i_standard) type bapiadsmtp-std_no default abap_true .
    methods delete_business_email
      importing
        value(i_email) type bapiadsmtp-e_mail .
    methods change_business_email
      importing
        value(i_email_old) type bapiadsmtp-e_mail
        value(i_email)     type bapiadsmtp-e_mail
        value(i_standard)  type bapiadsmtp-std_no default abap_true .
  protected section.
    data: ref_data     type ref to cmds_ei_contacts,
          extension_id type guid_32.
    methods update_address_task
      changing
        c_address type any.

    methods constructor
      importing
        i_contact      type knvp-parnr optional
        i_customer     type knvp-kunnr
        i_extension_id type guid_32 optional
      raising
        zcx_cmd_customer .

endclass.



class zcl_cmd_contact implementation.


  method add_business_email.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table ref_data->address_type_1-communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method add_business_fax_number.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_1-communication-fax-fax assigning <fax>.
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


  method add_business_mobile_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_1-communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method add_business_phone_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_1-communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method add_email.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table ref_data->address_type_3-communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method add_fax_number.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax
                                           contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-fax = i_fax
                      contact-data-extension = i_extension
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_3-communication-fax-fax assigning <fax>.
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


  method add_mobile_number.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-mobile
                      contact-data-std_recip   = abap_true "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_3-communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method add_phone_number.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-telephone = i_phone
                      contact-data-extension = i_extension
                      contact-data-r_3_user  = zcl_cmd_util=>phone_type-fixed
                      contact-data-std_recip   = abap_false "SMS
                      contact-data-std_no = i_standard
                      contact-data-country = i_country
                     ) into table ref_data->address_type_3-communication-phone-phone assigning <phone>.
    endif.

  endmethod.


  method change_business_email.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method change_business_fax_number.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax_old
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


  method change_business_mobile_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone_old ] to field-symbol(<phone>).
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


  method change_business_phone_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone_old
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


  method change_email.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method change_fax_number.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax_old
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
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone_old ] to field-symbol(<phone>).
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
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone_old
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


  method constructor.
    customer = i_customer.
    contact = i_contact.
    extension_id = i_extension_id.
    if i_contact is not supplied or i_contact is initial .
      set_mode( zcl_cmd_util=>mode-create ).
      "Get new contact number to be able to setup partner role for him
      "in one run of the class and one commit
      cmd_ei_api=>get_contact_number( importing ev_parnr = contact ).
    else.
      select single parnr into @contact
      from knvk
      where kunnr eq @customer
      and   parnr eq @contact.
      if sy-subrc ne 0.
        raise exception type zcx_cmd_customer exporting no = 004 v1 = conv #( contact ) v2 = conv #( customer ).
      endif.
    endif.

  endmethod.


  method delete.
    if contact is not initial.
      mode = zcl_cmd_util=>mode-delete.
    else.
      clear: ref_data.
    endif.

  endmethod.


  method delete_business_email.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_business_fax_number.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_business_mobile_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_business_phone_number.

    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method delete_email.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_fax_number.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_mobile_number.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method delete_phone_number.

    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method get_data.
    r_full_data = ref_data.
  endmethod.


  method get_standard_bus_email.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method get_standard_bus_fax_number.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method get_standard_bus_mobile_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method get_standard_bus_phone_number.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method get_standard_email.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method get_standard_fax_number.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method get_standard_mobile_number.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method get_standard_phone_number.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method set_address.
    if i_address is not initial.
      ref_data->address_type_3 = i_address.
    endif.
  endmethod.


  method set_address_org.
    if i_address is not initial.
      ref_data->address_type_1 = i_address.
    endif.

  endmethod.


  method set_address_private.
    if i_address is not initial.
      ref_data->address_type_2 = i_address.
    endif.

  endmethod.


  method set_addr_birth_name.
    ref_data->address_type_3-postal-data-birth_name = i_birth_name.
    ref_data->address_type_3-postal-datax-birth_name = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_building_p.
    ref_data->address_type_3-postal-data-building_p = i_building_p.
    ref_data->address_type_3-postal-datax-building_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_comm_type.
    ref_data->address_type_3-postal-data-comm_type = i_comm_type.
    ref_data->address_type_3-postal-datax-comm_type = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_department.
    ref_data->address_type_3-postal-data-department = i_department.
    ref_data->address_type_3-postal-datax-department = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_firstname.
    ref_data->address_type_3-postal-data-firstname = i_firstname.
    ref_data->address_type_3-postal-datax-firstname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_floor_p.
    ref_data->address_type_3-postal-data-floor_p = i_floor_p.
    ref_data->address_type_3-postal-datax-floor_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_from_date.
    ref_data->address_type_3-postal-data-from_date = i_from_date.
    ref_data->address_type_3-postal-datax-from_date = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_fullname.
    ref_data->address_type_3-postal-data-fullname = i_fullname.
    ref_data->address_type_3-postal-datax-fullname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method set_addr_fullname_x.
    ref_data->address_type_3-postal-data-fullname_x = i_fullname_x.
    ref_data->address_type_3-postal-datax-fullname_x = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method set_addr_function.
    ref_data->address_type_3-postal-data-function = i_function.
    ref_data->address_type_3-postal-datax-function = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_inhouse_ml.
    ref_data->address_type_3-postal-data-inhouse_ml = i_inhouse_ml.
    ref_data->address_type_3-postal-datax-inhouse_ml = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_initials.
    ref_data->address_type_3-postal-data-initials = i_initials.
    ref_data->address_type_3-postal-datax-initials = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_inits_sig.
    ref_data->address_type_3-postal-data-inits_sig = i_inits_sig.
    ref_data->address_type_3-postal-datax-inits_sig = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_langucpiso.
    ref_data->address_type_3-postal-data-langucpiso = i_langucpiso.
    ref_data->address_type_3-postal-datax-langucpiso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_langup_iso.
    ref_data->address_type_3-postal-data-langup_iso = i_langup_iso.
    ref_data->address_type_3-postal-datax-langup_iso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_langu_cr_p.
    ref_data->address_type_3-postal-data-langu_cr_p = i_langu_cr_p.
    ref_data->address_type_3-postal-datax-langu_cr_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_langu_p.
    ref_data->address_type_3-postal-data-langu_p = i_langu_p.
    ref_data->address_type_3-postal-datax-langu_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_lastname.
    ref_data->address_type_3-postal-data-lastname = i_lastname.
    ref_data->address_type_3-postal-datax-lastname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_middlename.
    ref_data->address_type_3-postal-data-middlename = i_middlename.
    ref_data->address_type_3-postal-datax-middlename = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method set_addr_namcountry.
    ref_data->address_type_3-postal-data-namcountry = i_namcountry.
    ref_data->address_type_3-postal-datax-namcountry = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_namctryiso.
    ref_data->address_type_3-postal-data-namctryiso = i_namctryiso.
    ref_data->address_type_3-postal-datax-namctryiso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_nameformat.
    ref_data->address_type_3-postal-data-nameformat = i_nameformat.
    ref_data->address_type_3-postal-datax-nameformat = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_nickname.
    ref_data->address_type_3-postal-data-nickname = i_nickname.
    ref_data->address_type_3-postal-datax-nickname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_org_address_id.
    ref_data->address_type_1-postal-data-address_id = i_address_id.
    ref_data->address_type_1-postal-datax-address_id = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_addr_group.
    ref_data->address_type_1-postal-data-addr_group = i_addr_group.
    ref_data->address_type_1-postal-datax-addr_group = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_addr_vers.
    ref_data->address_type_1-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_1-postal-datax-addr_vers = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_building.
    ref_data->address_type_1-postal-data-building = i_building.
    ref_data->address_type_1-postal-datax-building = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_chckstatus.
    ref_data->address_type_1-postal-data-chckstatus = i_chckstatus.
    ref_data->address_type_1-postal-datax-chckstatus = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_city.
    ref_data->address_type_1-postal-data-city = i_city.
    ref_data->address_type_1-postal-datax-city = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_city_no.
    ref_data->address_type_1-postal-data-city_no = i_city_no.
    ref_data->address_type_1-postal-datax-city_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_comm_type.
    ref_data->address_type_1-postal-data-comm_type = i_comm_type.
    ref_data->address_type_1-postal-datax-comm_type = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_conv_name.
    ref_data->address_type_1-postal-data-conv_name = i_conv_name.
    ref_data->address_type_1-postal-datax-conv_name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_country.
    ref_data->address_type_1-postal-data-country = i_country.
    ref_data->address_type_1-postal-datax-country = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_countryiso.
    ref_data->address_type_1-postal-data-countryiso = i_countryiso.
    ref_data->address_type_1-postal-datax-countryiso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_county.
    ref_data->address_type_1-postal-data-county = i_county.
    ref_data->address_type_1-postal-datax-county = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_county_code.
    ref_data->address_type_1-postal-data-county_code = i_county_code.
    ref_data->address_type_1-postal-datax-county_code = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_c_o_name.
    ref_data->address_type_1-postal-data-c_o_name = i_c_o_name.
    ref_data->address_type_1-postal-datax-c_o_name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_deliv_dis.
    ref_data->address_type_1-postal-data-deliv_dis = i_deliv_dis.
    ref_data->address_type_1-postal-datax-deliv_dis = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_deli_serv_number.
    ref_data->address_type_1-postal-data-deli_serv_number = i_deli_serv_number.
    ref_data->address_type_1-postal-datax-deli_serv_number = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_deli_serv_type.
    ref_data->address_type_1-postal-data-deli_serv_type = i_deli_serv_type.
    ref_data->address_type_1-postal-datax-deli_serv_type = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_distrct_no.
    ref_data->address_type_1-postal-data-distrct_no = i_distrct_no.
    ref_data->address_type_1-postal-datax-distrct_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_district.
    ref_data->address_type_1-postal-data-district = i_district.
    ref_data->address_type_1-postal-datax-district = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_dont_use_p.
    ref_data->address_type_1-postal-data-dont_use_p = i_dont_use_p.
    ref_data->address_type_1-postal-datax-dont_use_p = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_dont_use_s.
    ref_data->address_type_1-postal-data-dont_use_s = i_dont_use_s.
    ref_data->address_type_1-postal-datax-dont_use_s = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_extens_1.
    ref_data->address_type_1-postal-data-extens_1 = i_extens_1.
    ref_data->address_type_1-postal-datax-extens_1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_extens_2.
    ref_data->address_type_1-postal-data-extens_2 = i_extens_2.
    ref_data->address_type_1-postal-datax-extens_2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_floor.
    ref_data->address_type_1-postal-data-floor = i_floor.
    ref_data->address_type_1-postal-datax-floor = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_from_date.
    ref_data->address_type_1-postal-data-from_date = i_from_date.
    ref_data->address_type_1-postal-datax-from_date = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_homecityno.
    ref_data->address_type_1-postal-data-homecityno = i_homecityno.
    ref_data->address_type_1-postal-datax-homecityno = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_home_city.
    ref_data->address_type_1-postal-data-home_city = i_home_city.
    ref_data->address_type_1-postal-datax-home_city = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_house_no.
    ref_data->address_type_1-postal-data-house_no = i_house_no.
    ref_data->address_type_1-postal-datax-house_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_house_no2.
    ref_data->address_type_1-postal-data-house_no2 = i_house_no2.
    ref_data->address_type_1-postal-datax-house_no2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_house_no3.
    ref_data->address_type_1-postal-data-house_no3 = i_house_no3.
    ref_data->address_type_1-postal-datax-house_no3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_langu.
    ref_data->address_type_1-postal-data-langu = i_langu.
    ref_data->address_type_1-postal-datax-langu = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_langucriso.
    ref_data->address_type_1-postal-data-langucriso = i_langucriso.
    ref_data->address_type_1-postal-datax-langucriso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_langu_cr.
    ref_data->address_type_1-postal-data-langu_cr = i_langu_cr.
    ref_data->address_type_1-postal-datax-langu_cr = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_langu_iso.
    ref_data->address_type_1-postal-data-langu_iso = i_langu_iso.
    ref_data->address_type_1-postal-datax-langu_iso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_location.
    ref_data->address_type_1-postal-data-location = i_location.
    ref_data->address_type_1-postal-datax-location = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_name.
    ref_data->address_type_1-postal-data-name = i_name.
    ref_data->address_type_1-postal-datax-name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_name_2.
    ref_data->address_type_1-postal-data-name_2 = i_name_2.
    ref_data->address_type_1-postal-datax-name_2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_name_3.
    ref_data->address_type_1-postal-data-name_3 = i_name_3.
    ref_data->address_type_1-postal-datax-name_3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_name_4.
    ref_data->address_type_1-postal-data-name_4 = i_name_4.
    ref_data->address_type_1-postal-datax-name_4 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_pboxcit_no.
    ref_data->address_type_1-postal-data-pboxcit_no = i_pboxcit_no.
    ref_data->address_type_1-postal-datax-pboxcit_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_pcode1_ext.
    ref_data->address_type_1-postal-data-pcode1_ext = i_pcode1_ext.
    ref_data->address_type_1-postal-datax-pcode1_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_pcode2_ext.
    ref_data->address_type_1-postal-data-pcode2_ext = i_pcode2_ext.
    ref_data->address_type_1-postal-datax-pcode2_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_pcode3_ext.
    ref_data->address_type_1-postal-data-pcode3_ext = i_pcode3_ext.
    ref_data->address_type_1-postal-datax-pcode3_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_pobox_ctry.
    ref_data->address_type_1-postal-data-pobox_ctry = i_pobox_ctry.
    ref_data->address_type_1-postal-datax-pobox_ctry = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_postl_cod1.
    ref_data->address_type_1-postal-data-postl_cod1 = i_postl_cod1.
    ref_data->address_type_1-postal-datax-postl_cod1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_postl_cod2.
    ref_data->address_type_1-postal-data-postl_cod2 = i_postl_cod2.
    ref_data->address_type_1-postal-datax-postl_cod2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_postl_cod3.
    ref_data->address_type_1-postal-data-postl_cod3 = i_postl_cod3.
    ref_data->address_type_1-postal-datax-postl_cod3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_box.
    ref_data->address_type_1-postal-data-po_box = i_po_box.
    ref_data->address_type_1-postal-datax-po_box = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_box_cit.
    ref_data->address_type_1-postal-data-po_box_cit = i_po_box_cit.
    ref_data->address_type_1-postal-datax-po_box_cit = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_box_lobby.
    ref_data->address_type_1-postal-data-po_box_lobby = i_po_box_lobby.
    ref_data->address_type_1-postal-datax-po_box_lobby = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_box_reg.
    ref_data->address_type_1-postal-data-po_box_reg = i_po_box_reg.
    ref_data->address_type_1-postal-datax-po_box_reg = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_ctryiso.
    ref_data->address_type_1-postal-data-po_ctryiso = i_po_ctryiso.
    ref_data->address_type_1-postal-datax-po_ctryiso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_po_w_o_no.
    ref_data->address_type_1-postal-data-po_w_o_no = i_po_w_o_no.
    ref_data->address_type_1-postal-datax-po_w_o_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_regiogroup.
    ref_data->address_type_1-postal-data-regiogroup = i_regiogroup.
    ref_data->address_type_1-postal-datax-regiogroup = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_region.
    ref_data->address_type_1-postal-data-region = i_region.
    ref_data->address_type_1-postal-datax-region = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_room_no.
    ref_data->address_type_1-postal-data-room_no = i_room_no.
    ref_data->address_type_1-postal-datax-room_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_sort1.
    ref_data->address_type_1-postal-data-sort1 = i_sort1.
    ref_data->address_type_1-postal-datax-sort1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_sort2.
    ref_data->address_type_1-postal-data-sort2 = i_sort2.
    ref_data->address_type_1-postal-datax-sort2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_street.
    ref_data->address_type_1-postal-data-street = i_street.
    ref_data->address_type_1-postal-datax-street = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_street_no.
    ref_data->address_type_1-postal-data-street_no = i_street_no.
    ref_data->address_type_1-postal-datax-street_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_str_abbr.
    ref_data->address_type_1-postal-data-str_abbr = i_str_abbr.
    ref_data->address_type_1-postal-datax-str_abbr = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_str_suppl1.
    ref_data->address_type_1-postal-data-str_suppl1 = i_str_suppl1.
    ref_data->address_type_1-postal-datax-str_suppl1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_str_suppl2.
    ref_data->address_type_1-postal-data-str_suppl2 = i_str_suppl2.
    ref_data->address_type_1-postal-datax-str_suppl2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_str_suppl3.
    ref_data->address_type_1-postal-data-str_suppl3 = i_str_suppl3.
    ref_data->address_type_1-postal-datax-str_suppl3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_taxjurcode.
    ref_data->address_type_1-postal-data-taxjurcode = i_taxjurcode.
    ref_data->address_type_1-postal-datax-taxjurcode = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_time_zone.
    ref_data->address_type_1-postal-data-time_zone = i_time_zone.
    ref_data->address_type_1-postal-datax-time_zone = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_title.
    ref_data->address_type_1-postal-data-title = i_title.
    ref_data->address_type_1-postal-datax-title = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_township.
    ref_data->address_type_1-postal-data-township = i_township.
    ref_data->address_type_1-postal-datax-township = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_township_code.
    ref_data->address_type_1-postal-data-township_code = i_township_code.
    ref_data->address_type_1-postal-datax-township_code = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_to_date.
    ref_data->address_type_1-postal-data-to_date = i_to_date.
    ref_data->address_type_1-postal-datax-to_date = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_org_transpzone.
    ref_data->address_type_1-postal-data-transpzone = i_transpzone.
    ref_data->address_type_1-postal-datax-transpzone = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method set_addr_pers_group.
    ref_data->address_type_3-postal-data-pers_group = i_pers_group.
    ref_data->address_type_3-postal-datax-pers_group = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_prefix1.
    ref_data->address_type_3-postal-data-prefix1 = i_prefix1.
    ref_data->address_type_3-postal-datax-prefix1 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_prefix2.
    ref_data->address_type_3-postal-data-prefix2 = i_prefix2.
    ref_data->address_type_3-postal-datax-prefix2 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_profession.
    ref_data->address_type_3-postal-data-profession = i_profession.
    ref_data->address_type_3-postal-datax-profession = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_room_no_p.
    ref_data->address_type_3-postal-data-room_no_p = i_room_no_p.
    ref_data->address_type_3-postal-datax-room_no_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_secondname.
    ref_data->address_type_3-postal-data-secondname = i_secondname.
    ref_data->address_type_3-postal-datax-secondname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method set_addr_sex.
    ref_data->address_type_3-postal-data-sex = i_sex.
    ref_data->address_type_3-postal-datax-sex = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_sort1_p.
    ref_data->address_type_3-postal-data-sort1_p = i_sort1_p.
    ref_data->address_type_3-postal-datax-sort1_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_sort2_p.
    ref_data->address_type_3-postal-data-sort2_p = i_sort2_p.
    ref_data->address_type_3-postal-datax-sort2_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_title_aca1.
    ref_data->address_type_3-postal-data-title_aca1 = i_title_aca1.
    ref_data->address_type_3-postal-datax-title_aca1 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method set_addr_title_aca2.
    ref_data->address_type_3-postal-data-title_aca2 = i_title_aca2.
    ref_data->address_type_3-postal-datax-title_aca2 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_title_p.
    ref_data->address_type_3-postal-data-title_p = i_title_p.
    ref_data->address_type_3-postal-datax-title_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_title_sppl.
    ref_data->address_type_3-postal-data-title_sppl = i_title_sppl.
    ref_data->address_type_3-postal-datax-title_sppl = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_to_date.
    ref_data->address_type_3-postal-data-to_date = i_to_date.
    ref_data->address_type_3-postal-datax-to_date = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_addr_vers.
    ref_data->address_type_3-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_3-postal-datax-addr_vers = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method set_data.
    ref_data = i_full_data.
    texts ?= zcl_cmd_texts=>create_instance( i_extension_id = extension_id i_texts = ref #( ref_data->contact_texts ) ).
    if ref_data->data_key-parnr is initial.
      ref_data->data_key-parnr = contact.
    endif.
  endmethod.


  method set_data_abtnr. ref_data->data-abtnr = i_abtnr. ref_data->datax-abtnr = abap_true.  endmethod.


  method set_data_akver. ref_data->data-akver = i_akver. ref_data->datax-akver = abap_true.  endmethod.


  method set_data_bryth. ref_data->data-bryth = i_bryth. ref_data->datax-bryth = abap_true.  endmethod.


  method set_data_cvp_xblck_k. ref_data->data-cvp_xblck_k = i_cvp_xblck_k. ref_data->datax-cvp_xblck_k = abap_true . endmethod.


  method set_data_diab1. ref_data->data-diab1 = i_diab1. ref_data->datax-diab1 = abap_true.  endmethod.


  method set_data_diab2. ref_data->data-diab2 = i_diab2. ref_data->datax-diab2 = abap_true.  endmethod.


  method set_data_dibi1. ref_data->data-dibi1 = i_dibi1. ref_data->datax-dibi1 = abap_true.  endmethod.


  method set_data_dibi2. ref_data->data-dibi2 = i_dibi2. ref_data->datax-dibi2 = abap_true.  endmethod.


  method set_data_doab1. ref_data->data-doab1 = i_doab1. ref_data->datax-doab1 = abap_true.  endmethod.


  method set_data_doab2. ref_data->data-doab2 = i_doab2. ref_data->datax-doab2 = abap_true.  endmethod.


  method set_data_dobi1. ref_data->data-dobi1 = i_dobi1. ref_data->datax-dobi1 = abap_true.  endmethod.


  method set_data_dobi2. ref_data->data-dobi2 = i_dobi2. ref_data->datax-dobi2 = abap_true.  endmethod.


  method set_data_famst. ref_data->data-famst = i_famst. ref_data->datax-famst = abap_true.  endmethod.


  method set_data_frab1. ref_data->data-frab1 = i_frab1. ref_data->datax-frab1 = abap_true.  endmethod.


  method set_data_frab2. ref_data->data-frab2 = i_frab2. ref_data->datax-frab2 = abap_true.  endmethod.


  method set_data_frbi1. ref_data->data-frbi1 = i_frbi1. ref_data->datax-frbi1 = abap_true.  endmethod.


  method set_data_frbi2. ref_data->data-frbi2 = i_frbi2. ref_data->datax-frbi2 = abap_true.  endmethod.


  method set_data_gbdat. ref_data->data-gbdat = i_gbdat. ref_data->datax-gbdat = abap_true.  endmethod.


  method set_data_miab1. ref_data->data-miab1 = i_miab1. ref_data->datax-miab1 = abap_true.  endmethod.


  method set_data_miab2. ref_data->data-miab2 = i_miab2. ref_data->datax-miab2 = abap_true.  endmethod.


  method set_data_mibi1. ref_data->data-mibi1 = i_mibi1. ref_data->datax-mibi1 = abap_true.  endmethod.


  method set_data_mibi2. ref_data->data-mibi2 = i_mibi2. ref_data->datax-mibi2 = abap_true.  endmethod.


  method set_data_moab1. ref_data->data-moab1 = i_moab1. ref_data->datax-moab1 = abap_true.  endmethod.


  method set_data_moab2. ref_data->data-moab2 = i_moab2. ref_data->datax-moab2 = abap_true.  endmethod.


  method set_data_mobi1. ref_data->data-mobi1 = i_mobi1. ref_data->datax-mobi1 = abap_true.  endmethod.


  method set_data_mobi2. ref_data->data-mobi2 = i_mobi2. ref_data->datax-mobi2 = abap_true.  endmethod.


  method set_data_nmail. ref_data->data-nmail = i_nmail. ref_data->datax-nmail = abap_true.  endmethod.


  method set_data_pafkt. ref_data->data-pafkt = i_pafkt. ref_data->datax-pafkt = abap_true.  endmethod.


  method set_data_pakn1. ref_data->data-pakn1 = i_pakn1. ref_data->datax-pakn1 = abap_true.  endmethod.


  method set_data_pakn2. ref_data->data-pakn2 = i_pakn2. ref_data->datax-pakn2 = abap_true.  endmethod.


  method set_data_pakn3. ref_data->data-pakn3 = i_pakn3. ref_data->datax-pakn3 = abap_true.  endmethod.


  method set_data_pakn4. ref_data->data-pakn4 = i_pakn4. ref_data->datax-pakn4 = abap_true.  endmethod.


  method set_data_pakn5. ref_data->data-pakn5 = i_pakn5. ref_data->datax-pakn5 = abap_true.  endmethod.


  method set_data_parau. ref_data->data-parau = i_parau. ref_data->datax-parau = abap_true.  endmethod.


  method set_data_parge. ref_data->data-parge = i_parge. ref_data->datax-parge = abap_true.  endmethod.


  method set_data_parh1. ref_data->data-parh1 = i_parh1. ref_data->datax-parh1 = abap_true.  endmethod.


  method set_data_parh2. ref_data->data-parh2 = i_parh2. ref_data->datax-parh2 = abap_true.  endmethod.


  method set_data_parh3. ref_data->data-parh3 = i_parh3. ref_data->datax-parh3 = abap_true.  endmethod.


  method set_data_parh4. ref_data->data-parh4 = i_parh4. ref_data->datax-parh4 = abap_true.  endmethod.


  method set_data_parh5. ref_data->data-parh5 = i_parh5. ref_data->datax-parh5 = abap_true.  endmethod.


  method set_data_parvo. ref_data->data-parvo = i_parvo. ref_data->datax-parvo = abap_true.  endmethod.


  method set_data_pavip. ref_data->data-pavip = i_pavip. ref_data->datax-pavip = abap_true.  endmethod.


  method set_data_saab1. ref_data->data-saab1 = i_saab1. ref_data->datax-saab1 = abap_true.  endmethod.


  method set_data_saab2. ref_data->data-saab2 = i_saab2. ref_data->datax-saab2 = abap_true.  endmethod.


  method set_data_sabi1. ref_data->data-sabi1 = i_sabi1. ref_data->datax-sabi1 = abap_true.  endmethod.


  method set_data_sabi2. ref_data->data-sabi2 = i_sabi2. ref_data->datax-sabi2 = abap_true.  endmethod.


  method set_data_soab1. ref_data->data-soab1 = i_soab1. ref_data->datax-soab1 = abap_true.  endmethod.


  method set_data_soab2. ref_data->data-soab2 = i_soab2. ref_data->datax-soab2 = abap_true.  endmethod.


  method set_data_sobi1. ref_data->data-sobi1 = i_sobi1. ref_data->datax-sobi1 = abap_true.  endmethod.


  method set_data_sobi2. ref_data->data-sobi2 = i_sobi2. ref_data->datax-sobi2 = abap_true.  endmethod.


  method set_data_sortl. ref_data->data-sortl = i_sortl. ref_data->datax-sortl = abap_true.  endmethod.


  method set_data_uepar. ref_data->data-uepar = i_uepar. ref_data->datax-uepar = abap_true.  endmethod.


  method set_data_vrtnr. ref_data->data-vrtnr = i_vrtnr. ref_data->datax-vrtnr = abap_true.  endmethod.


  method set_mode.
    "Mode Create is setup in constructor, It should not be changed.
    if mode ne zcl_cmd_util=>mode-create.
      mode = i_mode.
      if ref_data is not initial.
        ref_data->task = mode.
      endif.
    endif.
  endmethod.


  method update_address_task.
    assign component 'TASK' of structure c_address to field-symbol(<task>).
    if sy-subrc eq 0.
      if <task> is initial.
        <task> = zcl_cmd_util=>mode-create.
      elseif <task> eq zcl_cmd_util=>mode-current_state.
        <task> = zcl_cmd_util=>mode-change.
      endif.
    endif.
    if ref_data->task is initial.
      ref_data->task = mode.
    endif.
  endmethod.

  method create_instance.
    if i_extension_id is initial.
      contact = new #( i_contact = i_contact i_customer = i_customer ).
    else.
      data: subclass type ref to object.
            try.
      data(sublcass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-contact ).
      create object subclass type (sublcass_abs_name)
       exporting
        i_extension_id  = i_extension_id
        i_contact       = i_contact
        i_customer      = i_customer.
      contact ?= subclass.
      catch zcx_cmd_no_extension.
       contact = new #( i_contact = i_contact i_customer = i_customer ).
      endtry.
    endif.
  endmethod.

endclass.
