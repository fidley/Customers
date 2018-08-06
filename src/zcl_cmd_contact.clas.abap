class ZCL_CMD_CONTACT definition
  public
  create private

  global friends zcl_cmd_customer .

public section.

  data CONTACT type KNVP-PARNR read-only .
  data CUSTOMER type KNVP-KUNNR .
  data MODE type zcl_cmd_util=>T_MODE read-only .
  data TEXTS type ref to ZSD_CUSTOMER_TEXTS .

  methods CONSTRUCTOR
    importing
      !I_CONTACT type KNVP-PARNR optional
      !I_CUSTOMER type KNVP-KUNNR
    raising
      ZCX_CUSTOMER .
    "! Manually set all structures and pass them here
  methods SET_DATA
    importing
      !I_FULL_DATA type ref to CMDS_EI_CONTACTS .
    "! Returns Contact structure which can be added to cmds_ei_contacts_t
  methods GET_DATA
    returning
      value(R_FULL_DATA) type ref to CMDS_EI_CONTACTS .
    "!Sets mode to "Delete" and clears all structures
  methods DELETE .
    "! Private addres
  methods SET_ADDRESS_PRIVATE
    importing
      value(I_ADDRESS) type CVIS_EI_ADDRESS2 .
    "! Address of Organization
  methods SET_ADDRESS_ORG
    importing
      value(I_ADDRESS) type CVIS_EI_ADDRESS1 .
    "! Contact person address
  methods SET_ADDRESS
    importing
      value(I_ADDRESS) type CVIS_EI_ADDRESS3 .
  methods SET_MODE
    importing
      !I_MODE type zcl_cmd_util=>T_MODE .
  methods SET_ADDR_VERS
    importing
      value(I_ADDR_VERS) type BAPIAD3VL-ADDR_VERS .
  methods SET_ADDR_FROM_DATE
    importing
      value(I_FROM_DATE) type BAPIAD3VL-FROM_DATE .
  methods SET_ADDR_TO_DATE
    importing
      value(I_TO_DATE) type BAPIAD3VL-TO_DATE .
  methods SET_ADDR_TITLE_P
    importing
      value(I_TITLE_P) type BAPIAD3VL-TITLE_P .
  methods SET_ADDR_FIRSTNAME
    importing
      value(I_FIRSTNAME) type BAPIAD3VL-FIRSTNAME .
  methods SET_ADDR_LASTNAME
    importing
      value(I_LASTNAME) type BAPIAD3VL-LASTNAME .
  methods SET_ADDR_BIRTH_NAME
    importing
      value(I_BIRTH_NAME) type BAPIAD3VL-BIRTH_NAME .
  methods SET_ADDR_MIDDLENAME
    importing
      value(I_MIDDLENAME) type BAPIAD3VL-MIDDLENAME .
  methods SET_ADDR_SECONDNAME
    importing
      value(I_SECONDNAME) type BAPIAD3VL-SECONDNAME .
  methods SET_ADDR_FULLNAME
    importing
      value(I_FULLNAME) type BAPIAD3VL-FULLNAME .
  methods SET_ADDR_FULLNAME_X
    importing
      value(I_FULLNAME_X) type BAPIAD3VL-FULLNAME_X .
  methods SET_ADDR_TITLE_ACA1
    importing
      value(I_TITLE_ACA1) type BAPIAD3VL-TITLE_ACA1 .
  methods SET_ADDR_TITLE_ACA2
    importing
      value(I_TITLE_ACA2) type BAPIAD3VL-TITLE_ACA2 .
  methods SET_ADDR_PREFIX1
    importing
      value(I_PREFIX1) type BAPIAD3VL-PREFIX1 .
  methods SET_ADDR_PREFIX2
    importing
      value(I_PREFIX2) type BAPIAD3VL-PREFIX2 .
  methods SET_ADDR_TITLE_SPPL
    importing
      value(I_TITLE_SPPL) type BAPIAD3VL-TITLE_SPPL .
  methods SET_ADDR_NICKNAME
    importing
      value(I_NICKNAME) type BAPIAD3VL-NICKNAME .
  methods SET_ADDR_INITIALS
    importing
      value(I_INITIALS) type BAPIAD3VL-INITIALS .
  methods SET_ADDR_NAMEFORMAT
    importing
      value(I_NAMEFORMAT) type BAPIAD3VL-NAMEFORMAT .
  methods SET_ADDR_NAMCOUNTRY
    importing
      value(I_NAMCOUNTRY) type BAPIAD3VL-NAMCOUNTRY .
  methods SET_ADDR_NAMCTRYISO
    importing
      value(I_NAMCTRYISO) type BAPIAD3VL-NAMCTRYISO .
  methods SET_ADDR_PROFESSION
    importing
      value(I_PROFESSION) type BAPIAD3VL-PROFESSION .
  methods SET_ADDR_SEX
    importing
      value(I_SEX) type BAPIAD3VL-SEX .
  methods SET_ADDR_LANGU_P
    importing
      value(I_LANGU_P) type BAPIAD3VL-LANGU_P .
  methods SET_ADDR_LANGUP_ISO
    importing
      value(I_LANGUP_ISO) type BAPIAD3VL-LANGUP_ISO .
  methods SET_ADDR_SORT1_P
    importing
      value(I_SORT1_P) type BAPIAD3VL-SORT1_P .
  methods SET_ADDR_SORT2_P
    importing
      value(I_SORT2_P) type BAPIAD3VL-SORT2_P .
  methods SET_ADDR_LANGU_CR_P
    importing
      value(I_LANGU_CR_P) type BAPIAD3VL-LANGU_CR_P .
  methods SET_ADDR_LANGUCPISO
    importing
      value(I_LANGUCPISO) type BAPIAD3VL-LANGUCPISO .
  methods SET_ADDR_DEPARTMENT
    importing
      value(I_DEPARTMENT) type BAPIAD3VL-DEPARTMENT .
  methods SET_ADDR_FUNCTION
    importing
      value(I_FUNCTION) type BAPIAD3VL-FUNCTION .
  methods SET_ADDR_BUILDING_P
    importing
      value(I_BUILDING_P) type BAPIAD3VL-BUILDING_P .
  methods SET_ADDR_FLOOR_P
    importing
      value(I_FLOOR_P) type BAPIAD3VL-FLOOR_P .
  methods SET_ADDR_ROOM_NO_P
    importing
      value(I_ROOM_NO_P) type BAPIAD3VL-ROOM_NO_P .
  methods SET_ADDR_INITS_SIG
    importing
      value(I_INITS_SIG) type BAPIAD3VL-INITS_SIG .
  methods SET_ADDR_INHOUSE_ML
    importing
      value(I_INHOUSE_ML) type BAPIAD3VL-INHOUSE_ML .
  methods SET_ADDR_COMM_TYPE
    importing
      value(I_COMM_TYPE) type BAPIAD3VL-COMM_TYPE .
  methods SET_ADDR_PERS_GROUP
    importing
      value(I_PERS_GROUP) type BAPIAD3VL-PERS_GROUP .
  methods SET_DATA_ABTNR
    importing
      value(I_ABTNR) type ABTNR_PA .
  methods SET_DATA_UEPAR
    importing
      value(I_UEPAR) type UEPAR .
  methods SET_DATA_PAFKT
    importing
      value(I_PAFKT) type PAFKT .
  methods SET_DATA_PARVO
    importing
      value(I_PARVO) type PARVO .
  methods SET_DATA_PAVIP
    importing
      value(I_PAVIP) type PAVIP .
  methods SET_DATA_PARGE
    importing
      value(I_PARGE) type PARGE .
  methods SET_DATA_GBDAT
    importing
      value(I_GBDAT) type GBDAT .
  methods SET_DATA_VRTNR
    importing
      value(I_VRTNR) type VTRNR .
  methods SET_DATA_BRYTH
    importing
      value(I_BRYTH) type BRYTH .
  methods SET_DATA_AKVER
    importing
      value(I_AKVER) type AKVER .
  methods SET_DATA_NMAIL
    importing
      value(I_NMAIL) type NMAIL .
  methods SET_DATA_PARAU
    importing
      value(I_PARAU) type PARAU .
  methods SET_DATA_PARH1
    importing
      value(I_PARH1) type PAAT1 .
  methods SET_DATA_PARH2
    importing
      value(I_PARH2) type PAAT2 .
  methods SET_DATA_PARH3
    importing
      value(I_PARH3) type PAAT3 .
  methods SET_DATA_PARH4
    importing
      value(I_PARH4) type PAAT4 .
  methods SET_DATA_PARH5
    importing
      value(I_PARH5) type PAAT5 .
  methods SET_DATA_MOAB1
    importing
      value(I_MOAB1) type BEMOAB1 .
  methods SET_DATA_MOBI1
    importing
      value(I_MOBI1) type BEMOBI1 .
  methods SET_DATA_MOAB2
    importing
      value(I_MOAB2) type BEMOAB2 .
  methods SET_DATA_MOBI2
    importing
      value(I_MOBI2) type BEMOBI2 .
  methods SET_DATA_DIAB1
    importing
      value(I_DIAB1) type BEDIAB1 .
  methods SET_DATA_DIBI1
    importing
      value(I_DIBI1) type BEDIBI1 .
  methods SET_DATA_DIAB2
    importing
      value(I_DIAB2) type BEDIAB2 .
  methods SET_DATA_DIBI2
    importing
      value(I_DIBI2) type BEDIBI2 .
  methods SET_DATA_MIAB1
    importing
      value(I_MIAB1) type BEMIAB1 .
  methods SET_DATA_MIBI1
    importing
      value(I_MIBI1) type BEMIBI1 .
  methods SET_DATA_MIAB2
    importing
      value(I_MIAB2) type BEMIAB2 .
  methods SET_DATA_MIBI2
    importing
      value(I_MIBI2) type BEMIBI2 .
  methods SET_DATA_DOAB1
    importing
      value(I_DOAB1) type BEDOAB1 .
  methods SET_DATA_DOBI1
    importing
      value(I_DOBI1) type BEDOBI1 .
  methods SET_DATA_DOAB2
    importing
      value(I_DOAB2) type BEDOAB2 .
  methods SET_DATA_DOBI2
    importing
      value(I_DOBI2) type BEDOBI2 .
  methods SET_DATA_FRAB1
    importing
      value(I_FRAB1) type BEFRAB1 .
  methods SET_DATA_FRBI1
    importing
      value(I_FRBI1) type BEFRBI1 .
  methods SET_DATA_FRAB2
    importing
      value(I_FRAB2) type BEFRAB2 .
  methods SET_DATA_FRBI2
    importing
      value(I_FRBI2) type BEFRBI2 .
  methods SET_DATA_SAAB1
    importing
      value(I_SAAB1) type BESAAB1 .
  methods SET_DATA_SABI1
    importing
      value(I_SABI1) type BESABI1 .
  methods SET_DATA_SAAB2
    importing
      value(I_SAAB2) type BESAAB2 .
  methods SET_DATA_SABI2
    importing
      value(I_SABI2) type BESABI2 .
  methods SET_DATA_SOAB1
    importing
      value(I_SOAB1) type BESOAB1 .
  methods SET_DATA_SOBI1
    importing
      value(I_SOBI1) type BESOBI1 .
  methods SET_DATA_SOAB2
    importing
      value(I_SOAB2) type BESOAB2 .
  methods SET_DATA_SOBI2
    importing
      value(I_SOBI2) type BESOBI2 .
  methods SET_DATA_PAKN1
    importing
      value(I_PAKN1) type PAAT6 .
  methods SET_DATA_PAKN2
    importing
      value(I_PAKN2) type PAAT7 .
  methods SET_DATA_PAKN3
    importing
      value(I_PAKN3) type PAAT8 .
  methods SET_DATA_PAKN4
    importing
      value(I_PAKN4) type PAAT9 .
  methods SET_DATA_PAKN5
    importing
      value(I_PAKN5) type PAAT0 .
  methods SET_DATA_SORTL
    importing
      value(I_SORTL) type SORTL .
  methods SET_DATA_FAMST
    importing
      value(I_FAMST) type FAMST .
  methods SET_DATA_CVP_XBLCK_K
    importing
      value(I_CVP_XBLCK_K) type CVP_XBLCK .
  methods SET_ADDR_ORG_ADDR_VERS
    importing
      value(I_ADDR_VERS) type AD_NATION .
  methods SET_ADDR_ORG_FROM_DATE
    importing
      value(I_FROM_DATE) type AD_DATE_FR .
  methods SET_ADDR_ORG_TO_DATE
    importing
      value(I_TO_DATE) type AD_DATE_TO .
  methods SET_ADDR_ORG_TITLE
    importing
      value(I_TITLE) type AD_TITLE .
  methods SET_ADDR_ORG_NAME
    importing
      value(I_NAME) type AD_NAME1 .
  methods SET_ADDR_ORG_NAME_2
    importing
      value(I_NAME_2) type AD_NAME2 .
  methods SET_ADDR_ORG_NAME_3
    importing
      value(I_NAME_3) type AD_NAME3 .
  methods SET_ADDR_ORG_NAME_4
    importing
      value(I_NAME_4) type AD_NAME4 .
  methods SET_ADDR_ORG_CONV_NAME
    importing
      value(I_CONV_NAME) type AD_NAMETXT .
  methods SET_ADDR_ORG_C_O_NAME
    importing
      value(I_C_O_NAME) type AD_NAME_CO .
  methods SET_ADDR_ORG_CITY
    importing
      value(I_CITY) type AD_CITY1 .
  methods SET_ADDR_ORG_DISTRICT
    importing
      value(I_DISTRICT) type AD_CITY2 .
  methods SET_ADDR_ORG_CITY_NO
    importing
      value(I_CITY_NO) type AD_CITYNUM .
  methods SET_ADDR_ORG_DISTRCT_NO
    importing
      value(I_DISTRCT_NO) type AD_CITYPNM .
  methods SET_ADDR_ORG_CHCKSTATUS
    importing
      value(I_CHCKSTATUS) type AD_CHECKST .
  methods SET_ADDR_ORG_REGIOGROUP
    importing
      value(I_REGIOGROUP) type REGIOGROUP .
  methods SET_ADDR_ORG_POSTL_COD1
    importing
      value(I_POSTL_COD1) type AD_PSTCD1 .
  methods SET_ADDR_ORG_POSTL_COD2
    importing
      value(I_POSTL_COD2) type AD_PSTCD2 .
  methods SET_ADDR_ORG_POSTL_COD3
    importing
      value(I_POSTL_COD3) type AD_PSTCD3 .
  methods SET_ADDR_ORG_PCODE1_EXT
    importing
      value(I_PCODE1_EXT) type AD_PST1XT .
  methods SET_ADDR_ORG_PCODE2_EXT
    importing
      value(I_PCODE2_EXT) type AD_PST2XT .
  methods SET_ADDR_ORG_PCODE3_EXT
    importing
      value(I_PCODE3_EXT) type AD_PST3XT .
  methods SET_ADDR_ORG_PO_BOX
    importing
      value(I_PO_BOX) type AD_POBX .
  methods SET_ADDR_ORG_PO_W_O_NO
    importing
      value(I_PO_W_O_NO) type AD_POBXNUM .
  methods SET_ADDR_ORG_PO_BOX_CIT
    importing
      value(I_PO_BOX_CIT) type AD_POBXLOC .
  methods SET_ADDR_ORG_PBOXCIT_NO
    importing
      value(I_PBOXCIT_NO) type AD_CIT2NUM .
  methods SET_ADDR_ORG_PO_BOX_REG
    importing
      value(I_PO_BOX_REG) type AD_POBXREG .
  methods SET_ADDR_ORG_POBOX_CTRY
    importing
      value(I_POBOX_CTRY) type AD_POBXCTY .
  methods SET_ADDR_ORG_PO_CTRYISO
    importing
      value(I_PO_CTRYISO) type INTCA .
  methods SET_ADDR_ORG_DELIV_DIS
    importing
      value(I_DELIV_DIS) type AD_PSTLAR .
  methods SET_ADDR_ORG_TRANSPZONE
    importing
      value(I_TRANSPZONE) type LZONE .
  methods SET_ADDR_ORG_STREET
    importing
      value(I_STREET) type AD_STREET .
  methods SET_ADDR_ORG_STREET_NO
    importing
      value(I_STREET_NO) type AD_STRNUM .
  methods SET_ADDR_ORG_STR_ABBR
    importing
      value(I_STR_ABBR) type AD_STRABBR .
  methods SET_ADDR_ORG_HOUSE_NO
    importing
      value(I_HOUSE_NO) type AD_HSNM1 .
  methods SET_ADDR_ORG_HOUSE_NO2
    importing
      value(I_HOUSE_NO2) type AD_HSNM2 .
  methods SET_ADDR_ORG_HOUSE_NO3
    importing
      value(I_HOUSE_NO3) type AD_HSNM3 .
  methods SET_ADDR_ORG_STR_SUPPL1
    importing
      value(I_STR_SUPPL1) type AD_STRSPP1 .
  methods SET_ADDR_ORG_STR_SUPPL2
    importing
      value(I_STR_SUPPL2) type AD_STRSPP2 .
  methods SET_ADDR_ORG_STR_SUPPL3
    importing
      value(I_STR_SUPPL3) type AD_STRSPP3 .
  methods SET_ADDR_ORG_LOCATION
    importing
      value(I_LOCATION) type AD_LCTN .
  methods SET_ADDR_ORG_BUILDING
    importing
      value(I_BUILDING) type AD_BLDNG .
  methods SET_ADDR_ORG_FLOOR
    importing
      value(I_FLOOR) type AD_FLOOR .
  methods SET_ADDR_ORG_ROOM_NO
    importing
      value(I_ROOM_NO) type AD_ROOMNUM .
  methods SET_ADDR_ORG_COUNTRY
    importing
      value(I_COUNTRY) type LAND1 .
  methods SET_ADDR_ORG_COUNTRYISO
    importing
      value(I_COUNTRYISO) type INTCA .
  methods SET_ADDR_ORG_LANGU
    importing
      value(I_LANGU) type SPRAS .
  methods SET_ADDR_ORG_LANGU_ISO
    importing
      value(I_LANGU_ISO) type LAISO .
  methods SET_ADDR_ORG_REGION
    importing
      value(I_REGION) type REGIO .
  methods SET_ADDR_ORG_SORT1
    importing
      value(I_SORT1) type AD_SORT1 .
  methods SET_ADDR_ORG_SORT2
    importing
      value(I_SORT2) type AD_SORT2 .
  methods SET_ADDR_ORG_EXTENS_1
    importing
      value(I_EXTENS_1) type AD_EXTENS1 .
  methods SET_ADDR_ORG_EXTENS_2
    importing
      value(I_EXTENS_2) type AD_EXTENS2 .
  methods SET_ADDR_ORG_TIME_ZONE
    importing
      value(I_TIME_ZONE) type AD_TZONE .
  methods SET_ADDR_ORG_TAXJURCODE
    importing
      value(I_TAXJURCODE) type AD_TXJCD .
  methods SET_ADDR_ORG_ADDRESS_ID
    importing
      value(I_ADDRESS_ID) type AD_ADDR_ID .
  methods SET_ADDR_ORG_LANGU_CR
    importing
      value(I_LANGU_CR) type AD_LANGUCR .
  methods SET_ADDR_ORG_LANGUCRISO
    importing
      value(I_LANGUCRISO) type LAISO .
  methods SET_ADDR_ORG_COMM_TYPE
    importing
      value(I_COMM_TYPE) type AD_COMM .
  methods SET_ADDR_ORG_ADDR_GROUP
    importing
      value(I_ADDR_GROUP) type AD_GROUP .
  methods SET_ADDR_ORG_HOME_CITY
    importing
      value(I_HOME_CITY) type AD_CITY3 .
  methods SET_ADDR_ORG_HOMECITYNO
    importing
      value(I_HOMECITYNO) type AD_CITYHNM .
  methods SET_ADDR_ORG_DONT_USE_S
    importing
      value(I_DONT_USE_S) type AD_NO_USES .
  methods SET_ADDR_ORG_DONT_USE_P
    importing
      value(I_DONT_USE_P) type AD_NO_USEP .
  methods SET_ADDR_ORG_PO_BOX_LOBBY
    importing
      value(I_PO_BOX_LOBBY) type AD_PO_BOX_LBY .
  methods SET_ADDR_ORG_DELI_SERV_TYPE
    importing
      value(I_DELI_SERV_TYPE) type AD_DELIVERY_SERVICE_TYPE .
  methods SET_ADDR_ORG_DELI_SERV_NUMBER
    importing
      value(I_DELI_SERV_NUMBER) type AD_DELIVERY_SERVICE_NUMBER .
  methods SET_ADDR_ORG_COUNTY_CODE
    importing
      value(I_COUNTY_CODE) type AD_CNTYNUM .
  methods SET_ADDR_ORG_COUNTY
    importing
      value(I_COUNTY) type AD_COUNTY .
  methods SET_ADDR_ORG_TOWNSHIP_CODE
    importing
      value(I_TOWNSHIP_CODE) type AD_TWSHPNUM .
  methods SET_ADDR_ORG_TOWNSHIP
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
  methods ADD_BUSINESS_PHONE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_BUSINESS_PHONE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional .
  methods CHANGE_BUSINESS_PHONE_NUMBER
    importing
      value(I_PHONE_OLD) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION_OLD) type BAPIADTEL-EXTENSION optional
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_EXTENSION) type BAPIADTEL-EXTENSION optional
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods GET_STANDARD_BUS_PHONE_NUMBER
    exporting
      value(E_PHONE) type BAPIADTEL-TELEPHONE
      value(E_EXTENSION) type BAPIADTEL-EXTENSION
      value(E_COUNTRY) type BAPIADTEL-COUNTRY .
  methods GET_STANDARD_BUS_MOBILE_NUMBER
    exporting
      value(E_PHONE) type BAPIADTEL-TELEPHONE
      value(E_COUNTRY) type BAPIADTEL-COUNTRY .
  methods GET_STANDARD_BUS_FAX_NUMBER
    exporting
      value(E_FAX) type BAPIADFAX-FAX
      value(E_EXTENSION) type BAPIADFAX-EXTENSION
      value(E_COUNTRY) type BAPIADFAX-COUNTRY .
  methods GET_STANDARD_BUS_EMAIL
    exporting
      value(E_EMAIL) type BAPIADSMTP-E_MAIL .
  methods ADD_BUSINESS_MOBILE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_BUSINESS_MOBILE_NUMBER
    importing
      value(I_PHONE) type BAPIADTEL-TELEPHONE .
  methods CHANGE_BUSINESS_MOBILE_NUMBER
    importing
      value(I_PHONE_OLD) type BAPIADTEL-TELEPHONE
      value(I_PHONE) type BAPIADTEL-TELEPHONE
      value(I_STANDARD) type BAPIADTEL-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods ADD_BUSINESS_FAX_NUMBER
    importing
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional
      value(I_STANDARD) type BAPIADFAX-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods DELETE_BUSINESS_FAX_NUMBER
    importing
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional .
  methods CHANGE_BUSINESS_FAX_NUMBER
    importing
      value(I_FAX_OLD) type BAPIADFAX-FAX
      value(I_EXTENSION_OLD) type BAPIADFAX-EXTENSION optional
      value(I_FAX) type BAPIADFAX-FAX
      value(I_EXTENSION) type BAPIADFAX-EXTENSION optional
      value(I_STANDARD) type BAPIADFAX-STD_NO default ABAP_TRUE
      value(I_COUNTRY) type BAPIADTEL-COUNTRY optional .
  methods ADD_BUSINESS_EMAIL
    importing
      value(I_EMAIL) type BAPIADSMTP-E_MAIL
      value(I_STANDARD) type BAPIADSMTP-STD_NO default ABAP_TRUE .
  methods DELETE_BUSINESS_EMAIL
    importing
      value(I_EMAIL) type BAPIADSMTP-E_MAIL .
  methods CHANGE_BUSINESS_EMAIL
    importing
      value(I_EMAIL_OLD) type BAPIADSMTP-E_MAIL
      value(I_EMAIL) type BAPIADSMTP-E_MAIL
      value(I_STANDARD) type BAPIADSMTP-STD_NO default ABAP_TRUE .
  protected section.
    data: ref_data type ref to cmds_ei_contacts.

  private section.


    methods update_address_task
      changing
        c_address type any.

ENDCLASS.



CLASS ZCL_CMD_CONTACT IMPLEMENTATION.


  method ADD_BUSINESS_EMAIL.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table ref_data->address_type_1-communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method ADD_BUSINESS_FAX_NUMBER.
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


  method ADD_BUSINESS_MOBILE_NUMBER.
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


 method ADD_BUSINESS_PHONE_NUMBER.
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


  method ADD_EMAIL.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<mail>).
    if sy-subrc ne 0.
      insert value #( contact-task = zcl_cmd_util=>mode-create
                      contact-data-e_mail = i_email
                      contact-data-std_no = i_standard
                     ) into table ref_data->address_type_3-communication-smtp-smtp assigning <mail>.
    endif.
  endmethod.


  method ADD_FAX_NUMBER.
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


  method ADD_MOBILE_NUMBER.
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


  method ADD_PHONE_NUMBER.
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


  method CHANGE_BUSINESS_EMAIL.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method CHANGE_BUSINESS_FAX_NUMBER.
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


  method CHANGE_BUSINESS_MOBILE_NUMBER.
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


  method CHANGE_BUSINESS_PHONE_NUMBER.
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


  method CHANGE_EMAIL.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email_old ] to field-symbol(<mail>).
    if sy-subrc eq 0.
      <mail>-contact-task = zcl_cmd_util=>mode-modify.
      <mail>-contact-data-e_mail = i_email.
      <mail>-contact-data-std_no = i_standard.
    endif.
  endmethod.


  method CHANGE_FAX_NUMBER.
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


  method CHANGE_MOBILE_NUMBER.
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


  method CHANGE_PHONE_NUMBER.
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


  method CONSTRUCTOR.
    customer = i_customer.
    contact = i_contact.
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
        raise exception type zcx_customer exporting no = 004 v1 = conv #( contact ) v2 = conv #( customer ).
      endif.
    endif.

  endmethod.


  method DELETE.
    if contact is not initial.
      mode = zcl_cmd_util=>mode-delete.
    else.
      clear: ref_data.
    endif.

  endmethod.


  method DELETE_BUSINESS_EMAIL.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_BUSINESS_FAX_NUMBER.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_BUSINESS_MOBILE_NUMBER.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_BUSINESS_PHONE_NUMBER.

    assign ref_data->address_type_1-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method DELETE_EMAIL.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-e_mail = i_email ] to field-symbol(<email>).
    if sy-subrc eq 0.
      <email>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_FAX_NUMBER.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-fax = i_fax
                                              contact-data-extension = i_extension ] to field-symbol(<fax>).
    if sy-subrc eq 0.
      <fax>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_MOBILE_NUMBER.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.
  endmethod.


  method DELETE_PHONE_NUMBER.

    assign ref_data->address_type_3-communication-phone-phone[ contact-data-telephone = i_phone
                                              contact-data-extension = i_extension ] to field-symbol(<phone>).
    if sy-subrc eq 0.
      <phone>-contact-task = zcl_cmd_util=>mode-delete.
    endif.

  endmethod.


  method GET_DATA.
*    r_full_data-data_key-parnr = contact.
*    if mode is initial and contact is not initial.
*      r_full_data-task = zcl_cmd_util=>mode-change.
*    elseif mode is initial and contact is initial.
*      r_full_data-task = zcl_cmd_util=>mode-create.
*    else.
*      r_full_data-task = mode.
*    endif.
*    r_full_data-data = data.
*    r_full_data-datax = datax.
*    r_full_data-address_type_1 = address_of_org.
*    r_full_data-address_type_2 = address_private.
*    r_full_data-address_type_3 = address.
*    r_full_data-contact_texts          = texts.
    r_full_data = ref_data.
  endmethod.


  method GET_STANDARD_BUS_EMAIL.
    assign ref_data->address_type_1-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method GET_STANDARD_BUS_FAX_NUMBER.
    assign ref_data->address_type_1-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_BUS_MOBILE_NUMBER.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


    method GET_STANDARD_BUS_PHONE_NUMBER.
    assign ref_data->address_type_1-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_EMAIL.
    assign ref_data->address_type_3-communication-smtp-smtp[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<mail>).
    if sy-subrc eq 0.
      e_email =  <mail>-contact-data-e_mail.
    endif.

  endmethod.


  method GET_STANDARD_FAX_NUMBER.
    assign ref_data->address_type_3-communication-fax-fax[ contact-data-std_no = abap_true ]
                                                                to field-symbol(<fax>).
    if sy-subrc eq 0.
      e_fax =  <fax>-contact-data-fax.
      e_extension = <fax>-contact-data-extension.
      e_country = <fax>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_MOBILE_NUMBER.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-mobile_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method GET_STANDARD_PHONE_NUMBER.
    assign ref_data->address_type_3-communication-phone-phone[ contact-data-r_3_user = zcl_cmd_util=>phone_type-fixed_default ]
                                                                to field-symbol(<phone>).
    if sy-subrc eq 0.
      e_phone =  <phone>-contact-data-telephone.
      e_extension = <phone>-contact-data-extension.
      e_country = <phone>-contact-data-country.
    endif.

  endmethod.


  method SET_ADDRESS.
    if i_address is not initial.
      ref_data->address_type_3 = i_address.
    endif.
  endmethod.


  method SET_ADDRESS_ORG.
    if i_address is not initial.
      ref_data->address_type_1 = i_address.
    endif.

  endmethod.


  method SET_ADDRESS_PRIVATE.
    if i_address is not initial.
      ref_data->address_type_2 = i_address.
    endif.

  endmethod.


  method SET_ADDR_BIRTH_NAME.
    ref_data->address_type_3-postal-data-birth_name = i_birth_name.
    ref_data->address_type_3-postal-datax-birth_name = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_BUILDING_P.
    ref_data->address_type_3-postal-data-building_p = i_building_p.
    ref_data->address_type_3-postal-datax-building_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_COMM_TYPE.
    ref_data->address_type_3-postal-data-comm_type = i_comm_type.
    ref_data->address_type_3-postal-datax-comm_type = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_DEPARTMENT.
    ref_data->address_type_3-postal-data-department = i_department.
    ref_data->address_type_3-postal-datax-department = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_FIRSTNAME.
    ref_data->address_type_3-postal-data-firstname = i_firstname.
    ref_data->address_type_3-postal-datax-firstname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_FLOOR_P.
    ref_data->address_type_3-postal-data-floor_p = i_floor_p.
    ref_data->address_type_3-postal-datax-floor_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_FROM_DATE.
    ref_data->address_type_3-postal-data-from_date = i_from_date.
    ref_data->address_type_3-postal-datax-from_date = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_FULLNAME.
    ref_data->address_type_3-postal-data-fullname = i_fullname.
    ref_data->address_type_3-postal-datax-fullname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method SET_ADDR_FULLNAME_X.
    ref_data->address_type_3-postal-data-fullname_x = i_fullname_x.
    ref_data->address_type_3-postal-datax-fullname_x = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method SET_ADDR_FUNCTION.
    ref_data->address_type_3-postal-data-function = i_function.
    ref_data->address_type_3-postal-datax-function = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_INHOUSE_ML.
    ref_data->address_type_3-postal-data-inhouse_ml = i_inhouse_ml.
    ref_data->address_type_3-postal-datax-inhouse_ml = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_INITIALS.
    ref_data->address_type_3-postal-data-initials = i_initials.
    ref_data->address_type_3-postal-datax-initials = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_INITS_SIG.
    ref_data->address_type_3-postal-data-inits_sig = i_inits_sig.
    ref_data->address_type_3-postal-datax-inits_sig = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_LANGUCPISO.
    ref_data->address_type_3-postal-data-langucpiso = i_langucpiso.
    ref_data->address_type_3-postal-datax-langucpiso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_LANGUP_ISO.
    ref_data->address_type_3-postal-data-langup_iso = i_langup_iso.
    ref_data->address_type_3-postal-datax-langup_iso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_LANGU_CR_P.
    ref_data->address_type_3-postal-data-langu_cr_p = i_langu_cr_p.
    ref_data->address_type_3-postal-datax-langu_cr_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_LANGU_P.
    ref_data->address_type_3-postal-data-langu_p = i_langu_p.
    ref_data->address_type_3-postal-datax-langu_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_LASTNAME.
    ref_data->address_type_3-postal-data-lastname = i_lastname.
    ref_data->address_type_3-postal-datax-lastname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_MIDDLENAME.
    ref_data->address_type_3-postal-data-middlename = i_middlename.
    ref_data->address_type_3-postal-datax-middlename = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method SET_ADDR_NAMCOUNTRY.
    ref_data->address_type_3-postal-data-namcountry = i_namcountry.
    ref_data->address_type_3-postal-datax-namcountry = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_NAMCTRYISO.
    ref_data->address_type_3-postal-data-namctryiso = i_namctryiso.
    ref_data->address_type_3-postal-datax-namctryiso = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_NAMEFORMAT.
    ref_data->address_type_3-postal-data-nameformat = i_nameformat.
    ref_data->address_type_3-postal-datax-nameformat = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_NICKNAME.
    ref_data->address_type_3-postal-data-nickname = i_nickname.
    ref_data->address_type_3-postal-datax-nickname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_ORG_ADDRESS_ID.
    ref_data->address_type_1-postal-data-address_id = i_address_id.
    ref_data->address_type_1-postal-datax-address_id = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_ADDR_GROUP.
    ref_data->address_type_1-postal-data-addr_group = i_addr_group.
    ref_data->address_type_1-postal-datax-addr_group = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_ADDR_VERS.
    ref_data->address_type_1-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_1-postal-datax-addr_vers = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_BUILDING.
    ref_data->address_type_1-postal-data-building = i_building.
    ref_data->address_type_1-postal-datax-building = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_CHCKSTATUS.
    ref_data->address_type_1-postal-data-chckstatus = i_chckstatus.
    ref_data->address_type_1-postal-datax-chckstatus = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_CITY.
    ref_data->address_type_1-postal-data-city = i_city.
    ref_data->address_type_1-postal-datax-city = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_CITY_NO.
    ref_data->address_type_1-postal-data-city_no = i_city_no.
    ref_data->address_type_1-postal-datax-city_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_COMM_TYPE.
    ref_data->address_type_1-postal-data-comm_type = i_comm_type.
    ref_data->address_type_1-postal-datax-comm_type = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_CONV_NAME.
    ref_data->address_type_1-postal-data-conv_name = i_conv_name.
    ref_data->address_type_1-postal-datax-conv_name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_COUNTRY.
    ref_data->address_type_1-postal-data-country = i_country.
    ref_data->address_type_1-postal-datax-country = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_COUNTRYISO.
    ref_data->address_type_1-postal-data-countryiso = i_countryiso.
    ref_data->address_type_1-postal-datax-countryiso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_COUNTY.
    ref_data->address_type_1-postal-data-county = i_county.
    ref_data->address_type_1-postal-datax-county = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_COUNTY_CODE.
    ref_data->address_type_1-postal-data-county_code = i_county_code.
    ref_data->address_type_1-postal-datax-county_code = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_C_O_NAME.
    ref_data->address_type_1-postal-data-c_o_name = i_c_o_name.
    ref_data->address_type_1-postal-datax-c_o_name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DELIV_DIS.
    ref_data->address_type_1-postal-data-deliv_dis = i_deliv_dis.
    ref_data->address_type_1-postal-datax-deliv_dis = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DELI_SERV_NUMBER.
    ref_data->address_type_1-postal-data-deli_serv_number = i_deli_serv_number.
    ref_data->address_type_1-postal-datax-deli_serv_number = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DELI_SERV_TYPE.
    ref_data->address_type_1-postal-data-deli_serv_type = i_deli_serv_type.
    ref_data->address_type_1-postal-datax-deli_serv_type = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DISTRCT_NO.
    ref_data->address_type_1-postal-data-distrct_no = i_distrct_no.
    ref_data->address_type_1-postal-datax-distrct_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DISTRICT.
    ref_data->address_type_1-postal-data-district = i_district.
    ref_data->address_type_1-postal-datax-district = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DONT_USE_P.
    ref_data->address_type_1-postal-data-dont_use_p = i_dont_use_p.
    ref_data->address_type_1-postal-datax-dont_use_p = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_DONT_USE_S.
    ref_data->address_type_1-postal-data-dont_use_s = i_dont_use_s.
    ref_data->address_type_1-postal-datax-dont_use_s = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_EXTENS_1.
    ref_data->address_type_1-postal-data-extens_1 = i_extens_1.
    ref_data->address_type_1-postal-datax-extens_1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_EXTENS_2.
    ref_data->address_type_1-postal-data-extens_2 = i_extens_2.
    ref_data->address_type_1-postal-datax-extens_2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_FLOOR.
    ref_data->address_type_1-postal-data-floor = i_floor.
    ref_data->address_type_1-postal-datax-floor = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_FROM_DATE.
    ref_data->address_type_1-postal-data-from_date = i_from_date.
    ref_data->address_type_1-postal-datax-from_date = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_HOMECITYNO.
    ref_data->address_type_1-postal-data-homecityno = i_homecityno.
    ref_data->address_type_1-postal-datax-homecityno = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_HOME_CITY.
    ref_data->address_type_1-postal-data-home_city = i_home_city.
    ref_data->address_type_1-postal-datax-home_city = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_HOUSE_NO.
    ref_data->address_type_1-postal-data-house_no = i_house_no.
    ref_data->address_type_1-postal-datax-house_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_HOUSE_NO2.
    ref_data->address_type_1-postal-data-house_no2 = i_house_no2.
    ref_data->address_type_1-postal-datax-house_no2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_HOUSE_NO3.
    ref_data->address_type_1-postal-data-house_no3 = i_house_no3.
    ref_data->address_type_1-postal-datax-house_no3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_LANGU.
    ref_data->address_type_1-postal-data-langu = i_langu.
    ref_data->address_type_1-postal-datax-langu = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_LANGUCRISO.
    ref_data->address_type_1-postal-data-langucriso = i_langucriso.
    ref_data->address_type_1-postal-datax-langucriso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_LANGU_CR.
    ref_data->address_type_1-postal-data-langu_cr = i_langu_cr.
    ref_data->address_type_1-postal-datax-langu_cr = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_LANGU_ISO.
    ref_data->address_type_1-postal-data-langu_iso = i_langu_iso.
    ref_data->address_type_1-postal-datax-langu_iso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_LOCATION.
    ref_data->address_type_1-postal-data-location = i_location.
    ref_data->address_type_1-postal-datax-location = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_NAME.
    ref_data->address_type_1-postal-data-name = i_name.
    ref_data->address_type_1-postal-datax-name = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_NAME_2.
    ref_data->address_type_1-postal-data-name_2 = i_name_2.
    ref_data->address_type_1-postal-datax-name_2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_NAME_3.
    ref_data->address_type_1-postal-data-name_3 = i_name_3.
    ref_data->address_type_1-postal-datax-name_3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_NAME_4.
    ref_data->address_type_1-postal-data-name_4 = i_name_4.
    ref_data->address_type_1-postal-datax-name_4 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PBOXCIT_NO.
    ref_data->address_type_1-postal-data-pboxcit_no = i_pboxcit_no.
    ref_data->address_type_1-postal-datax-pboxcit_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PCODE1_EXT.
    ref_data->address_type_1-postal-data-pcode1_ext = i_pcode1_ext.
    ref_data->address_type_1-postal-datax-pcode1_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PCODE2_EXT.
    ref_data->address_type_1-postal-data-pcode2_ext = i_pcode2_ext.
    ref_data->address_type_1-postal-datax-pcode2_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PCODE3_EXT.
    ref_data->address_type_1-postal-data-pcode3_ext = i_pcode3_ext.
    ref_data->address_type_1-postal-datax-pcode3_ext = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_POBOX_CTRY.
    ref_data->address_type_1-postal-data-pobox_ctry = i_pobox_ctry.
    ref_data->address_type_1-postal-datax-pobox_ctry = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_POSTL_COD1.
    ref_data->address_type_1-postal-data-postl_cod1 = i_postl_cod1.
    ref_data->address_type_1-postal-datax-postl_cod1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_POSTL_COD2.
    ref_data->address_type_1-postal-data-postl_cod2 = i_postl_cod2.
    ref_data->address_type_1-postal-datax-postl_cod2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_POSTL_COD3.
    ref_data->address_type_1-postal-data-postl_cod3 = i_postl_cod3.
    ref_data->address_type_1-postal-datax-postl_cod3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_BOX.
    ref_data->address_type_1-postal-data-po_box = i_po_box.
    ref_data->address_type_1-postal-datax-po_box = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_BOX_CIT.
    ref_data->address_type_1-postal-data-po_box_cit = i_po_box_cit.
    ref_data->address_type_1-postal-datax-po_box_cit = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_BOX_LOBBY.
    ref_data->address_type_1-postal-data-po_box_lobby = i_po_box_lobby.
    ref_data->address_type_1-postal-datax-po_box_lobby = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_BOX_REG.
    ref_data->address_type_1-postal-data-po_box_reg = i_po_box_reg.
    ref_data->address_type_1-postal-datax-po_box_reg = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_CTRYISO.
    ref_data->address_type_1-postal-data-po_ctryiso = i_po_ctryiso.
    ref_data->address_type_1-postal-datax-po_ctryiso = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_PO_W_O_NO.
    ref_data->address_type_1-postal-data-po_w_o_no = i_po_w_o_no.
    ref_data->address_type_1-postal-datax-po_w_o_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_REGIOGROUP.
    ref_data->address_type_1-postal-data-regiogroup = i_regiogroup.
    ref_data->address_type_1-postal-datax-regiogroup = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_REGION.
    ref_data->address_type_1-postal-data-region = i_region.
    ref_data->address_type_1-postal-datax-region = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_ROOM_NO.
    ref_data->address_type_1-postal-data-room_no = i_room_no.
    ref_data->address_type_1-postal-datax-room_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_SORT1.
    ref_data->address_type_1-postal-data-sort1 = i_sort1.
    ref_data->address_type_1-postal-datax-sort1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_SORT2.
    ref_data->address_type_1-postal-data-sort2 = i_sort2.
    ref_data->address_type_1-postal-datax-sort2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STREET.
    ref_data->address_type_1-postal-data-street = i_street.
    ref_data->address_type_1-postal-datax-street = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STREET_NO.
    ref_data->address_type_1-postal-data-street_no = i_street_no.
    ref_data->address_type_1-postal-datax-street_no = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STR_ABBR.
    ref_data->address_type_1-postal-data-str_abbr = i_str_abbr.
    ref_data->address_type_1-postal-datax-str_abbr = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STR_SUPPL1.
    ref_data->address_type_1-postal-data-str_suppl1 = i_str_suppl1.
    ref_data->address_type_1-postal-datax-str_suppl1 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STR_SUPPL2.
    ref_data->address_type_1-postal-data-str_suppl2 = i_str_suppl2.
    ref_data->address_type_1-postal-datax-str_suppl2 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_STR_SUPPL3.
    ref_data->address_type_1-postal-data-str_suppl3 = i_str_suppl3.
    ref_data->address_type_1-postal-datax-str_suppl3 = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TAXJURCODE.
    ref_data->address_type_1-postal-data-taxjurcode = i_taxjurcode.
    ref_data->address_type_1-postal-datax-taxjurcode = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TIME_ZONE.
    ref_data->address_type_1-postal-data-time_zone = i_time_zone.
    ref_data->address_type_1-postal-datax-time_zone = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TITLE.
    ref_data->address_type_1-postal-data-title = i_title.
    ref_data->address_type_1-postal-datax-title = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TOWNSHIP.
    ref_data->address_type_1-postal-data-township = i_township.
    ref_data->address_type_1-postal-datax-township = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TOWNSHIP_CODE.
    ref_data->address_type_1-postal-data-township_code = i_township_code.
    ref_data->address_type_1-postal-datax-township_code = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TO_DATE.
    ref_data->address_type_1-postal-data-to_date = i_to_date.
    ref_data->address_type_1-postal-datax-to_date = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_ORG_TRANSPZONE.
    ref_data->address_type_1-postal-data-transpzone = i_transpzone.
    ref_data->address_type_1-postal-datax-transpzone = abap_true .
    update_address_task( changing c_address = ref_data->address_type_1 ).
  endmethod.


  method SET_ADDR_PERS_GROUP.
    ref_data->address_type_3-postal-data-pers_group = i_pers_group.
    ref_data->address_type_3-postal-datax-pers_group = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_PREFIX1.
    ref_data->address_type_3-postal-data-prefix1 = i_prefix1.
    ref_data->address_type_3-postal-datax-prefix1 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_PREFIX2.
    ref_data->address_type_3-postal-data-prefix2 = i_prefix2.
    ref_data->address_type_3-postal-datax-prefix2 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_PROFESSION.
    ref_data->address_type_3-postal-data-profession = i_profession.
    ref_data->address_type_3-postal-datax-profession = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_ROOM_NO_P.
    ref_data->address_type_3-postal-data-room_no_p = i_room_no_p.
    ref_data->address_type_3-postal-datax-room_no_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_SECONDNAME.
    ref_data->address_type_3-postal-data-secondname = i_secondname.
    ref_data->address_type_3-postal-datax-secondname = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method SET_ADDR_SEX.
    ref_data->address_type_3-postal-data-sex = i_sex.
    ref_data->address_type_3-postal-datax-sex = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_SORT1_P.
    ref_data->address_type_3-postal-data-sort1_p = i_sort1_p.
    ref_data->address_type_3-postal-datax-sort1_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_SORT2_P.
    ref_data->address_type_3-postal-data-sort2_p = i_sort2_p.
    ref_data->address_type_3-postal-datax-sort2_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_TITLE_ACA1.
    ref_data->address_type_3-postal-data-title_aca1 = i_title_aca1.
    ref_data->address_type_3-postal-datax-title_aca1 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).

  endmethod.


  method SET_ADDR_TITLE_ACA2.
    ref_data->address_type_3-postal-data-title_aca2 = i_title_aca2.
    ref_data->address_type_3-postal-datax-title_aca2 = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_TITLE_P.
    ref_data->address_type_3-postal-data-title_p = i_title_p.
    ref_data->address_type_3-postal-datax-title_p = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_TITLE_SPPL.
    ref_data->address_type_3-postal-data-title_sppl = i_title_sppl.
    ref_data->address_type_3-postal-datax-title_sppl = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_TO_DATE.
    ref_data->address_type_3-postal-data-to_date = i_to_date.
    ref_data->address_type_3-postal-datax-to_date = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_ADDR_VERS.
    ref_data->address_type_3-postal-data-addr_vers = i_addr_vers.
    ref_data->address_type_3-postal-datax-addr_vers = abap_true.
    update_address_task( changing c_address = ref_data->address_type_3 ).
  endmethod.


  method SET_DATA.
    ref_data = i_full_data.
    texts = new zsd_customer_texts( ref #( ref_data->contact_texts ) ).
    if ref_data->data_key-parnr is initial.
      ref_data->data_key-parnr = contact.
    endif.
  endmethod.


  method SET_DATA_ABTNR. ref_data->data-abtnr = i_abtnr. ref_data->datax-abtnr = abap_true.  endmethod.


  method SET_DATA_AKVER. ref_data->data-akver = i_akver. ref_data->datax-akver = abap_true.  endmethod.


  method SET_DATA_BRYTH. ref_data->data-bryth = i_bryth. ref_data->datax-bryth = abap_true.  endmethod.


  method SET_DATA_CVP_XBLCK_K. ref_data->data-cvp_xblck_k = i_cvp_xblck_k. ref_data->datax-cvp_xblck_k = abap_true . endmethod.


  method SET_DATA_DIAB1. ref_data->data-diab1 = i_diab1. ref_data->datax-diab1 = abap_true.  endmethod.


  method SET_DATA_DIAB2. ref_data->data-diab2 = i_diab2. ref_data->datax-diab2 = abap_true.  endmethod.


  method SET_DATA_DIBI1. ref_data->data-dibi1 = i_dibi1. ref_data->datax-dibi1 = abap_true.  endmethod.


  method SET_DATA_DIBI2. ref_data->data-dibi2 = i_dibi2. ref_data->datax-dibi2 = abap_true.  endmethod.


  method SET_DATA_DOAB1. ref_data->data-doab1 = i_doab1. ref_data->datax-doab1 = abap_true.  endmethod.


  method SET_DATA_DOAB2. ref_data->data-doab2 = i_doab2. ref_data->datax-doab2 = abap_true.  endmethod.


  method SET_DATA_DOBI1. ref_data->data-dobi1 = i_dobi1. ref_data->datax-dobi1 = abap_true.  endmethod.


  method SET_DATA_DOBI2. ref_data->data-dobi2 = i_dobi2. ref_data->datax-dobi2 = abap_true.  endmethod.


  method SET_DATA_FAMST. ref_data->data-famst = i_famst. ref_data->datax-famst = abap_true.  endmethod.


  method SET_DATA_FRAB1. ref_data->data-frab1 = i_frab1. ref_data->datax-frab1 = abap_true.  endmethod.


  method SET_DATA_FRAB2. ref_data->data-frab2 = i_frab2. ref_data->datax-frab2 = abap_true.  endmethod.


  method SET_DATA_FRBI1. ref_data->data-frbi1 = i_frbi1. ref_data->datax-frbi1 = abap_true.  endmethod.


  method SET_DATA_FRBI2. ref_data->data-frbi2 = i_frbi2. ref_data->datax-frbi2 = abap_true.  endmethod.


  method SET_DATA_GBDAT. ref_data->data-gbdat = i_gbdat. ref_data->datax-gbdat = abap_true.  endmethod.


  method SET_DATA_MIAB1. ref_data->data-miab1 = i_miab1. ref_data->datax-miab1 = abap_true.  endmethod.


  method SET_DATA_MIAB2. ref_data->data-miab2 = i_miab2. ref_data->datax-miab2 = abap_true.  endmethod.


  method SET_DATA_MIBI1. ref_data->data-mibi1 = i_mibi1. ref_data->datax-mibi1 = abap_true.  endmethod.


  method SET_DATA_MIBI2. ref_data->data-mibi2 = i_mibi2. ref_data->datax-mibi2 = abap_true.  endmethod.


  method SET_DATA_MOAB1. ref_data->data-moab1 = i_moab1. ref_data->datax-moab1 = abap_true.  endmethod.


  method SET_DATA_MOAB2. ref_data->data-moab2 = i_moab2. ref_data->datax-moab2 = abap_true.  endmethod.


  method SET_DATA_MOBI1. ref_data->data-mobi1 = i_mobi1. ref_data->datax-mobi1 = abap_true.  endmethod.


  method SET_DATA_MOBI2. ref_data->data-mobi2 = i_mobi2. ref_data->datax-mobi2 = abap_true.  endmethod.


  method SET_DATA_NMAIL. ref_data->data-nmail = i_nmail. ref_data->datax-nmail = abap_true.  endmethod.


  method SET_DATA_PAFKT. ref_data->data-pafkt = i_pafkt. ref_data->datax-pafkt = abap_true.  endmethod.


  method SET_DATA_PAKN1. ref_data->data-pakn1 = i_pakn1. ref_data->datax-pakn1 = abap_true.  endmethod.


  method SET_DATA_PAKN2. ref_data->data-pakn2 = i_pakn2. ref_data->datax-pakn2 = abap_true.  endmethod.


  method SET_DATA_PAKN3. ref_data->data-pakn3 = i_pakn3. ref_data->datax-pakn3 = abap_true.  endmethod.


  method SET_DATA_PAKN4. ref_data->data-pakn4 = i_pakn4. ref_data->datax-pakn4 = abap_true.  endmethod.


  method SET_DATA_PAKN5. ref_data->data-pakn5 = i_pakn5. ref_data->datax-pakn5 = abap_true.  endmethod.


  method SET_DATA_PARAU. ref_data->data-parau = i_parau. ref_data->datax-parau = abap_true.  endmethod.


  method SET_DATA_PARGE. ref_data->data-parge = i_parge. ref_data->datax-parge = abap_true.  endmethod.


  method SET_DATA_PARH1. ref_data->data-parh1 = i_parh1. ref_data->datax-parh1 = abap_true.  endmethod.


  method SET_DATA_PARH2. ref_data->data-parh2 = i_parh2. ref_data->datax-parh2 = abap_true.  endmethod.


  method SET_DATA_PARH3. ref_data->data-parh3 = i_parh3. ref_data->datax-parh3 = abap_true.  endmethod.


  method SET_DATA_PARH4. ref_data->data-parh4 = i_parh4. ref_data->datax-parh4 = abap_true.  endmethod.


  method SET_DATA_PARH5. ref_data->data-parh5 = i_parh5. ref_data->datax-parh5 = abap_true.  endmethod.


  method SET_DATA_PARVO. ref_data->data-parvo = i_parvo. ref_data->datax-parvo = abap_true.  endmethod.


  method SET_DATA_PAVIP. ref_data->data-pavip = i_pavip. ref_data->datax-pavip = abap_true.  endmethod.


  method SET_DATA_SAAB1. ref_data->data-saab1 = i_saab1. ref_data->datax-saab1 = abap_true.  endmethod.


  method SET_DATA_SAAB2. ref_data->data-saab2 = i_saab2. ref_data->datax-saab2 = abap_true.  endmethod.


  method SET_DATA_SABI1. ref_data->data-sabi1 = i_sabi1. ref_data->datax-sabi1 = abap_true.  endmethod.


  method SET_DATA_SABI2. ref_data->data-sabi2 = i_sabi2. ref_data->datax-sabi2 = abap_true.  endmethod.


  method SET_DATA_SOAB1. ref_data->data-soab1 = i_soab1. ref_data->datax-soab1 = abap_true.  endmethod.


  method SET_DATA_SOAB2. ref_data->data-soab2 = i_soab2. ref_data->datax-soab2 = abap_true.  endmethod.


  method SET_DATA_SOBI1. ref_data->data-sobi1 = i_sobi1. ref_data->datax-sobi1 = abap_true.  endmethod.


  method SET_DATA_SOBI2. ref_data->data-sobi2 = i_sobi2. ref_data->datax-sobi2 = abap_true.  endmethod.


  method SET_DATA_SORTL. ref_data->data-sortl = i_sortl. ref_data->datax-sortl = abap_true.  endmethod.


  method SET_DATA_UEPAR. ref_data->data-uepar = i_uepar. ref_data->datax-uepar = abap_true.  endmethod.


  method SET_DATA_VRTNR. ref_data->data-vrtnr = i_vrtnr. ref_data->datax-vrtnr = abap_true.  endmethod.


  method SET_MODE.
    "Mode Create is setup in constructor, It should not be changed.
    if mode ne zcl_cmd_util=>mode-create.
      mode = i_mode.
      if ref_data is not initial.
        ref_data->task = mode.
      endif.
    endif.
  endmethod.


  method UPDATE_ADDRESS_TASK.
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
ENDCLASS.
