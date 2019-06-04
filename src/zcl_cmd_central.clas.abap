class ZCL_CMD_CENTRAL definition
  public
  create private

  global friends zcl_cmd_customer.

public section.

  methods SET_DATA
    importing
      !I_DATA type ref to CMDS_EI_VMD_CENTRAL_DATA .
  methods GET_DATA
    exporting
      !E_DATA type ref to CMDS_EI_VMD_CENTRAL_DATA
      !E_DATAX type ref to CMDS_EI_VMD_CENTRAL_DATA_XFLAG .
  methods SET_AUFSD
    importing
      value(I_AUFSD) type AUFSD_X .
  methods SET_BAHNE
    importing
      value(I_BAHNE) type BAHNE .
  methods SET_BAHNS
    importing
      value(I_BAHNS) type BAHNS .
  methods SET_BBBNR
    importing
      value(I_BBBNR) type BBBNR .
  methods SET_BBSNR
    importing
      value(I_BBSNR) type BBSNR .
  methods SET_BEGRU
    importing
      value(I_BEGRU) type BRGRU .
  methods SET_BRSCH
    importing
      value(I_BRSCH) type BRSCH .
  methods SET_BUBKZ
    importing
      value(I_BUBKZ) type BUBKZ .
  methods SET_FAKSD
    importing
      value(I_FAKSD) type FAKSD_X .
  methods SET_FISKN
    importing
      value(I_FISKN) type FISKN_D .
  methods SET_KNRZA
    importing
      value(I_KNRZA) type KNRZA .
  methods SET_KONZS
    importing
      value(I_KONZS) type KONZS .
  methods SET_KTOKD
    importing
      value(I_KTOKD) type KTOKD .
  methods SET_KUKLA
    importing
      value(I_KUKLA) type KUKLA .
  methods SET_LIFNR
    importing
      value(I_LIFNR) type LIFNR .
  methods SET_LIFSD
    importing
      value(I_LIFSD) type LIFSD_X .
  methods SET_LOCCO
    importing
      value(I_LOCCO) type LOCCO .
  methods SET_LOEVM
    importing
      value(I_LOEVM) type LOEVM_X .
  methods SET_NIELS
    importing
      value(I_NIELS) type NIELS .
  methods SET_COUNC
    importing
      value(I_COUNC) type COUNC .
  methods SET_CITYC
    importing
      value(I_CITYC) type CITYC .
  methods SET_RPMKR
    importing
      value(I_RPMKR) type RPMKR .
  methods SET_SPERR
    importing
      value(I_SPERR) type SPERB_X .
  methods SET_STCD1
    importing
      value(I_STCD1) type STCD1 .
  methods SET_STCD2
    importing
      value(I_STCD2) type STCD2 .
  methods SET_STKZA
    importing
      value(I_STKZA) type STKZA .
  methods SET_STKZU
    importing
      value(I_STKZU) type STKZU .
  methods SET_XZEMP
    importing
      value(I_XZEMP) type XREGU .
  methods SET_VBUND
    importing
      value(I_VBUND) type RASSC .
  methods SET_STCEG
    importing
      value(I_STCEG) type STCEG .
  methods SET_GFORM
    importing
      value(I_GFORM) type GFORM .
  methods SET_BRAN1
    importing
      value(I_BRAN1) type BRAN1_D .
  methods SET_BRAN2
    importing
      value(I_BRAN2) type BRAN2 .
  methods SET_BRAN3
    importing
      value(I_BRAN3) type BRAN3 .
  methods SET_BRAN4
    importing
      value(I_BRAN4) type BRAN4 .
  methods SET_BRAN5
    importing
      value(I_BRAN5) type BRAN5 .
  methods SET_UMJAH
    importing
      value(I_UMJAH) type UMJAH .
  methods SET_UWAER
    importing
      value(I_UWAER) type UWAER .
  methods SET_JMZAH
    importing
      value(I_JMZAH) type JMZAH .
  methods SET_JMJAH
    importing
      value(I_JMJAH) type JMJAH .
  methods SET_KATR1
    importing
      value(I_KATR1) type KATR1 .
  methods SET_KATR2
    importing
      value(I_KATR2) type KATR2 .
  methods SET_KATR3
    importing
      value(I_KATR3) type KATR3 .
  methods SET_KATR4
    importing
      value(I_KATR4) type KATR4 .
  methods SET_KATR5
    importing
      value(I_KATR5) type KATR5 .
  methods SET_KATR6
    importing
      value(I_KATR6) type KATR6 .
  methods SET_KATR7
    importing
      value(I_KATR7) type KATR7 .
  methods SET_KATR8
    importing
      value(I_KATR8) type KATR8 .
  methods SET_KATR9
    importing
      value(I_KATR9) type KATR9 .
  methods SET_KATR10
    importing
      value(I_KATR10) type KATR10 .
  methods SET_STKZN
    importing
      value(I_STKZN) type STKZN .
  methods SET_UMSA1
    importing
      value(I_UMSA1) type UMSA1 .
  methods SET_PERIV
    importing
      value(I_PERIV) type PERIV .
  methods SET_KTOCD
    importing
      value(I_KTOCD) type KTOCD .
  methods SET_DTAMS
    importing
      value(I_DTAMS) type DTAMS .
  methods SET_DTAWS
    importing
      value(I_DTAWS) type DTAWS .
  methods SET_HZUOR
    importing
      value(I_HZUOR) type HZUOR .
  methods SET_CIVVE
    importing
      value(I_CIVVE) type CIVVE .
  methods SET_MILVE
    importing
      value(I_MILVE) type MILVE .
  methods SET_FITYP
    importing
      value(I_FITYP) type J_1AFITP_D .
  methods SET_STCDT
    importing
      value(I_STCDT) type J_1ATOID .
  methods SET_STCD3
    importing
      value(I_STCD3) type STCD3 .
  methods SET_STCD4
    importing
      value(I_STCD4) type STCD4 .
  methods SET_XICMS
    importing
      value(I_XICMS) type J_1BTCICMS .
  methods SET_XXIPI
    importing
      value(I_XXIPI) type J_1BTCIPI .
  methods SET_XSUBT
    importing
      value(I_XSUBT) type J_1BTCST .
  methods SET_CFOPC
    importing
      value(I_CFOPC) type J_1BINDUS1 .
  methods SET_TXLW1
    importing
      value(I_TXLW1) type J_1BTAXLW1 .
  methods SET_TXLW2
    importing
      value(I_TXLW2) type J_1BTAXLW2 .
  methods SET_CCC01
    importing
      value(I_CCC01) type CCC01 .
  methods SET_CCC02
    importing
      value(I_CCC02) type CCC02 .
  methods SET_CCC03
    importing
      value(I_CCC03) type CCC03 .
  methods SET_CCC04
    importing
      value(I_CCC04) type CCC04 .
  methods SET_CASSD
    importing
      value(I_CASSD) type CASSD_X .
  methods SET_KDKG1
    importing
      value(I_KDKG1) type KDKG1 .
  methods SET_KDKG2
    importing
      value(I_KDKG2) type KDKG2 .
  methods SET_KDKG3
    importing
      value(I_KDKG3) type KDKG3 .
  methods SET_KDKG4
    importing
      value(I_KDKG4) type KDKG4 .
  methods SET_KDKG5
    importing
      value(I_KDKG5) type KDKG5 .
  methods SET_NODEL
    importing
      value(I_NODEL) type NODEL_X .
  methods SET_XSUB2
    importing
      value(I_XSUB2) type J_1BTCST .
  methods SET_J_1KFREPRE
    importing
      value(I_J_1KFREPRE) type REPRES .
  methods SET_J_1KFTBUS
    importing
      value(I_J_1KFTBUS) type GESTYP .
  methods SET_J_1KFTIND
    importing
      value(I_J_1KFTIND) type INDTYP .
  methods SET_STCD5
    importing
      value(I_STCD5) type STCD5 .
  methods SET_CVP_XBLCK
    importing
      value(I_CVP_XBLCK) type CVP_XBLCK .
  methods SET_SUFRAMA
    importing
      value(I_SUFRAMA) type J_1BSUFRAMA .
  methods SET_RG
    importing
      value(I_RG) type J_1BRG .
  methods SET_EXP
    importing
      value(I_EXP) type J_1BEXP .
  methods SET_UF
    importing
      value(I_UF) type J_1BUF .
  methods SET_RGDATE
    importing
      value(I_RGDATE) type J_1BRGDATE .
  methods SET_RIC
    importing
      value(I_RIC) type J_1BRIC .
  methods SET_RNE
    importing
      value(I_RNE) type J_1BRNE .
  methods SET_RNEDATE
    importing
      value(I_RNEDATE) type J_1BRNEDATE .
  methods SET_CNAE
    importing
      value(I_CNAE) type J_1BCNAE .
  methods SET_LEGALNAT
    importing
      value(I_LEGALNAT) type J_1BLEGALNAT .
  methods SET_CRTN
    importing
      value(I_CRTN) type J_1BCRTN .
  methods SET_ICMSTAXPAY
    importing
      value(I_ICMSTAXPAY) type J_1BICMSTAXPAY .
  methods SET_INDTYP
    importing
      value(I_INDTYP) type J_1BINDTYP .
  methods SET_TDT
    importing
      value(I_TDT) type J_1BTDT .
  methods SET_COMSIZE
    importing
      value(I_COMSIZE) type J_1BCOMSIZE .
  methods SET_DECREGPC
    importing
      value(I_DECREGPC) type J_1BDECREGPC .
  protected section.
  private section.

    data:
      data  type ref to cmds_ei_vmd_central_data,
      datax type ref to cmds_ei_vmd_central_data_xflag.

      methods: constructor importing i_data  type ref to cmds_ei_vmd_central_data
                                     i_datax type ref to cmds_ei_vmd_central_data_xflag.

ENDCLASS.



CLASS ZCL_CMD_CENTRAL IMPLEMENTATION.


  METHOD CONSTRUCTOR.
    data = i_data.
    datax = i_datax.
  ENDMETHOD.


  method GET_DATA.
    e_data = data.
    e_datax = datax.
  endmethod.


  method SET_AUFSD. data->aufsd = i_aufsd. datax->aufsd = abap_true . endmethod.


  method SET_BAHNE. data->bahne = i_bahne. datax->bahne = abap_true . endmethod.


  method SET_BAHNS. data->bahns = i_bahns. datax->bahns = abap_true . endmethod.


  method SET_BBBNR. data->bbbnr = i_bbbnr. datax->bbbnr = abap_true . endmethod.


  method SET_BBSNR. data->bbsnr = i_bbsnr. datax->bbsnr = abap_true . endmethod.


  method SET_BEGRU. data->begru = i_begru. datax->begru = abap_true . endmethod.


  method SET_BRAN1. data->bran1 = i_bran1. datax->bran1 = abap_true . endmethod.


  method SET_BRAN2. data->bran2 = i_bran2. datax->bran2 = abap_true . endmethod.


  method SET_BRAN3. data->bran3 = i_bran3. datax->bran3 = abap_true . endmethod.


  method SET_BRAN4. data->bran4 = i_bran4. datax->bran4 = abap_true . endmethod.


  method SET_BRAN5. data->bran5 = i_bran5. datax->bran5 = abap_true . endmethod.


  method SET_BRSCH. data->brsch = i_brsch. datax->brsch = abap_true . endmethod.


  method SET_BUBKZ. data->bubkz = i_bubkz. datax->bubkz = abap_true . endmethod.


  method SET_CASSD. data->cassd = i_cassd. datax->cassd = abap_true . endmethod.


  method SET_CCC01. data->ccc01 = i_ccc01. datax->ccc01 = abap_true . endmethod.


  method SET_CCC02. data->ccc02 = i_ccc02. datax->ccc02 = abap_true . endmethod.


  method SET_CCC03. data->ccc03 = i_ccc03. datax->ccc03 = abap_true . endmethod.


  method SET_CCC04. data->ccc04 = i_ccc04. datax->ccc04 = abap_true . endmethod.


  method SET_CFOPC. data->cfopc = i_cfopc. datax->cfopc = abap_true . endmethod.


  method SET_CITYC. data->cityc = i_cityc. datax->cityc = abap_true . endmethod.


  method SET_CIVVE. data->civve = i_civve. datax->civve = abap_true . endmethod.


  method SET_CNAE. data->cnae = i_cnae. datax->cnae = abap_true . endmethod.


  method SET_COMSIZE. data->comsize = i_comsize. datax->comsize = abap_true . endmethod.


  method SET_COUNC. data->counc = i_counc. datax->counc = abap_true . endmethod.


  method SET_CRTN. data->crtn = i_crtn. datax->crtn = abap_true . endmethod.


  method SET_CVP_XBLCK. data->cvp_xblck = i_cvp_xblck. datax->cvp_xblck = abap_true . endmethod.


  method SET_DATA.
    data = i_data.
  endmethod.


  method SET_DECREGPC. data->decregpc = i_decregpc. datax->decregpc = abap_true . endmethod.


  method SET_DTAMS. data->dtams = i_dtams. datax->dtams = abap_true . endmethod.


  method SET_DTAWS. data->dtaws = i_dtaws. datax->dtaws = abap_true . endmethod.


  method SET_EXP. data->exp = i_exp. datax->exp = abap_true . endmethod.


  method SET_FAKSD. data->faksd = i_faksd. datax->faksd = abap_true . endmethod.


  method SET_FISKN. data->fiskn = i_fiskn. datax->fiskn = abap_true . endmethod.


  method SET_FITYP. data->fityp = i_fityp. datax->fityp = abap_true . endmethod.


  method SET_GFORM. data->gform = i_gform. datax->gform = abap_true . endmethod.


  method SET_HZUOR. data->hzuor = i_hzuor. datax->hzuor = abap_true . endmethod.


  method SET_ICMSTAXPAY. data->icmstaxpay = i_icmstaxpay. datax->icmstaxpay = abap_true . endmethod.


  method SET_INDTYP. data->indtyp = i_indtyp. datax->indtyp = abap_true . endmethod.


  method SET_JMJAH. data->jmjah = i_jmjah. datax->jmjah = abap_true . endmethod.


  method SET_JMZAH. data->jmzah = i_jmzah. datax->jmzah = abap_true . endmethod.


  method SET_J_1KFREPRE. data->j_1kfrepre = i_j_1kfrepre. datax->j_1kfrepre = abap_true . endmethod.


  method SET_J_1KFTBUS. data->j_1kftbus = i_j_1kftbus. datax->j_1kftbus = abap_true . endmethod.


  method SET_J_1KFTIND. data->j_1kftind = i_j_1kftind. datax->j_1kftind = abap_true . endmethod.


  method SET_KATR1. data->katr1 = i_katr1. datax->katr1 = abap_true . endmethod.


  method SET_KATR10. data->katr10 = i_katr10. datax->katr10 = abap_true . endmethod.


  method SET_KATR2. data->katr2 = i_katr2. datax->katr2 = abap_true . endmethod.


  method SET_KATR3. data->katr3 = i_katr3. datax->katr3 = abap_true . endmethod.


  method SET_KATR4. data->katr4 = i_katr4. datax->katr4 = abap_true . endmethod.


  method SET_KATR5. data->katr5 = i_katr5. datax->katr5 = abap_true . endmethod.


  method SET_KATR6. data->katr6 = i_katr6. datax->katr6 = abap_true . endmethod.


  method SET_KATR7. data->katr7 = i_katr7. datax->katr7 = abap_true . endmethod.


  method SET_KATR8. data->katr8 = i_katr8. datax->katr8 = abap_true . endmethod.


  method SET_KATR9. data->katr9 = i_katr9. datax->katr9 = abap_true . endmethod.


  method SET_KDKG1. data->kdkg1 = i_kdkg1. datax->kdkg1 = abap_true . endmethod.


  method SET_KDKG2. data->kdkg2 = i_kdkg2. datax->kdkg2 = abap_true . endmethod.


  method SET_KDKG3. data->kdkg3 = i_kdkg3. datax->kdkg3 = abap_true . endmethod.


  method SET_KDKG4. data->kdkg4 = i_kdkg4. datax->kdkg4 = abap_true . endmethod.


  method SET_KDKG5. data->kdkg5 = i_kdkg5. datax->kdkg5 = abap_true . endmethod.


  method SET_KNRZA. data->knrza = i_knrza. datax->knrza = abap_true . endmethod.


  method SET_KONZS. data->konzs = i_konzs. datax->konzs = abap_true . endmethod.


  method SET_KTOCD. data->ktocd = i_ktocd. datax->ktocd = abap_true . endmethod.


  method SET_KTOKD. data->ktokd = i_ktokd. datax->ktokd = abap_true . endmethod.


  method SET_KUKLA. data->kukla = i_kukla. datax->kukla = abap_true . endmethod.


  method SET_LEGALNAT. data->legalnat = i_legalnat. datax->legalnat = abap_true . endmethod.


  method SET_LIFNR. data->lifnr = i_lifnr. datax->lifnr = abap_true . endmethod.


  method SET_LIFSD. data->lifsd = i_lifsd. datax->lifsd = abap_true . endmethod.


  method SET_LOCCO. data->locco = i_locco. datax->locco = abap_true . endmethod.


  method SET_LOEVM. data->loevm = i_loevm. datax->loevm = abap_true . endmethod.


  method SET_MILVE. data->milve = i_milve. datax->milve = abap_true . endmethod.


  method SET_NIELS. data->niels = i_niels. datax->niels = abap_true . endmethod.


  method SET_NODEL. data->nodel = i_nodel. datax->nodel = abap_true . endmethod.


  method SET_PERIV. data->periv = i_periv. datax->periv = abap_true . endmethod.


  method SET_RG. data->rg = i_rg. datax->rg = abap_true . endmethod.


  method SET_RGDATE. data->rgdate = i_rgdate. datax->rgdate = abap_true . endmethod.


  method SET_RIC. data->ric = i_ric. datax->ric = abap_true . endmethod.


  method SET_RNE. data->rne = i_rne. datax->rne = abap_true . endmethod.


  method SET_RNEDATE. data->rnedate = i_rnedate. datax->rnedate = abap_true . endmethod.


  method SET_RPMKR. data->rpmkr = i_rpmkr. datax->rpmkr = abap_true . endmethod.


  method SET_SPERR. data->sperr = i_sperr. datax->sperr = abap_true . endmethod.


  method SET_STCD1. data->stcd1 = i_stcd1. datax->stcd1 = abap_true . endmethod.


  method SET_STCD2. data->stcd2 = i_stcd2. datax->stcd2 = abap_true . endmethod.


  method SET_STCD3. data->stcd3 = i_stcd3. datax->stcd3 = abap_true . endmethod.


  method SET_STCD4. data->stcd4 = i_stcd4. datax->stcd4 = abap_true . endmethod.


  method SET_STCD5. data->stcd5 = i_stcd5. datax->stcd5 = abap_true . endmethod.


  method SET_STCDT. data->stcdt = i_stcdt. datax->stcdt = abap_true . endmethod.


  method SET_STCEG. data->stceg = i_stceg. datax->stceg = abap_true . endmethod.


  method SET_STKZA. data->stkza = i_stkza. datax->stkza = abap_true . endmethod.


  method SET_STKZN. data->stkzn = i_stkzn. datax->stkzn = abap_true . endmethod.


  method SET_STKZU. data->stkzu = i_stkzu. datax->stkzu = abap_true . endmethod.


  method SET_SUFRAMA. data->suframa = i_suframa. datax->suframa = abap_true . endmethod.


  method SET_TDT. data->tdt = i_tdt. datax->tdt = abap_true . endmethod.


  method SET_TXLW1. data->txlw1 = i_txlw1. datax->txlw1 = abap_true . endmethod.


  method SET_TXLW2. data->txlw2 = i_txlw2. datax->txlw2 = abap_true . endmethod.


  method SET_UF. data->uf = i_uf. datax->uf = abap_true . endmethod.


  method SET_UMJAH. data->umjah = i_umjah. datax->umjah = abap_true . endmethod.


  method SET_UMSA1. data->umsa1 = i_umsa1. datax->umsa1 = abap_true . endmethod.


  method SET_UWAER. data->uwaer = i_uwaer. datax->uwaer = abap_true . endmethod.


  method SET_VBUND. data->vbund = i_vbund. datax->vbund = abap_true . endmethod.


  method SET_XICMS. data->xicms = i_xicms. datax->xicms = abap_true . endmethod.


  method SET_XSUB2. data->xsub2 = i_xsub2. datax->xsub2 = abap_true . endmethod.


  method SET_XSUBT. data->xsubt = i_xsubt. datax->xsubt = abap_true . endmethod.


  method SET_XXIPI. data->xxipi = i_xxipi. datax->xxipi = abap_true . endmethod.


  method SET_XZEMP. data->xzemp = i_xzemp. datax->xzemp = abap_true . endmethod.

ENDCLASS.
