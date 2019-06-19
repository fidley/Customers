class zcl_cmd_central definition
  public
  create protected.

  public section.

    class-methods: create_instance importing i_extension_id   type guid_32
                                             i_data           type ref to cmds_ei_vmd_central_data
                                             i_datax          type ref to cmds_ei_vmd_central_data_xflag
                                   returning value(r_central) type ref to zcl_cmd_central.
    methods set_data
      importing
        !i_data type ref to cmds_ei_vmd_central_data .
    methods get_data
      exporting
        !e_data  type ref to cmds_ei_vmd_central_data
        !e_datax type ref to cmds_ei_vmd_central_data_xflag .
    methods set_aufsd
      importing
        value(i_aufsd) type aufsd_x .
    methods set_bahne
      importing
        value(i_bahne) type bahne .
    methods set_bahns
      importing
        value(i_bahns) type bahns .
    methods set_bbbnr
      importing
        value(i_bbbnr) type bbbnr .
    methods set_bbsnr
      importing
        value(i_bbsnr) type bbsnr .
    methods set_begru
      importing
        value(i_begru) type brgru .
    methods set_brsch
      importing
        value(i_brsch) type brsch .
    methods set_bubkz
      importing
        value(i_bubkz) type bubkz .
    methods set_faksd
      importing
        value(i_faksd) type faksd_x .
    methods set_fiskn
      importing
        value(i_fiskn) type fiskn_d .
    methods set_knrza
      importing
        value(i_knrza) type knrza .
    methods set_konzs
      importing
        value(i_konzs) type konzs .
    methods set_ktokd
      importing
        value(i_ktokd) type ktokd .
    methods set_kukla
      importing
        value(i_kukla) type kukla .
    methods set_lifnr
      importing
        value(i_lifnr) type lifnr .
    methods set_lifsd
      importing
        value(i_lifsd) type lifsd_x .
    methods set_locco
      importing
        value(i_locco) type locco .
    methods set_loevm
      importing
        value(i_loevm) type loevm_x .
    methods set_niels
      importing
        value(i_niels) type niels .
    methods set_counc
      importing
        value(i_counc) type counc .
    methods set_cityc
      importing
        value(i_cityc) type cityc .
    methods set_rpmkr
      importing
        value(i_rpmkr) type rpmkr .
    methods set_sperr
      importing
        value(i_sperr) type sperb_x .
    methods set_stcd1
      importing
        value(i_stcd1) type stcd1 .
    methods set_stcd2
      importing
        value(i_stcd2) type stcd2 .
    methods set_stkza
      importing
        value(i_stkza) type stkza .
    methods set_stkzu
      importing
        value(i_stkzu) type stkzu .
    methods set_xzemp
      importing
        value(i_xzemp) type xregu .
    methods set_vbund
      importing
        value(i_vbund) type rassc .
    methods set_stceg
      importing
        value(i_stceg) type stceg .
    methods set_gform
      importing
        value(i_gform) type gform .
    methods set_bran1
      importing
        value(i_bran1) type bran1_d .
    methods set_bran2
      importing
        value(i_bran2) type bran2 .
    methods set_bran3
      importing
        value(i_bran3) type bran3 .
    methods set_bran4
      importing
        value(i_bran4) type bran4 .
    methods set_bran5
      importing
        value(i_bran5) type bran5 .
    methods set_umjah
      importing
        value(i_umjah) type umjah .
    methods set_uwaer
      importing
        value(i_uwaer) type uwaer .
    methods set_jmzah
      importing
        value(i_jmzah) type jmzah .
    methods set_jmjah
      importing
        value(i_jmjah) type jmjah .
    methods set_katr1
      importing
        value(i_katr1) type katr1 .
    methods set_katr2
      importing
        value(i_katr2) type katr2 .
    methods set_katr3
      importing
        value(i_katr3) type katr3 .
    methods set_katr4
      importing
        value(i_katr4) type katr4 .
    methods set_katr5
      importing
        value(i_katr5) type katr5 .
    methods set_katr6
      importing
        value(i_katr6) type katr6 .
    methods set_katr7
      importing
        value(i_katr7) type katr7 .
    methods set_katr8
      importing
        value(i_katr8) type katr8 .
    methods set_katr9
      importing
        value(i_katr9) type katr9 .
    methods set_katr10
      importing
        value(i_katr10) type katr10 .
    methods set_stkzn
      importing
        value(i_stkzn) type stkzn .
    methods set_umsa1
      importing
        value(i_umsa1) type umsa1 .
    methods set_periv
      importing
        value(i_periv) type periv .
    methods set_ktocd
      importing
        value(i_ktocd) type ktocd .
    methods set_dtams
      importing
        value(i_dtams) type dtams .
    methods set_dtaws
      importing
        value(i_dtaws) type dtaws .
    methods set_hzuor
      importing
        value(i_hzuor) type hzuor .
    methods set_civve
      importing
        value(i_civve) type civve .
    methods set_milve
      importing
        value(i_milve) type milve .
    methods set_fityp
      importing
        value(i_fityp) type j_1afitp_d .
    methods set_stcdt
      importing
        value(i_stcdt) type j_1atoid .
    methods set_stcd3
      importing
        value(i_stcd3) type stcd3 .
    methods set_stcd4
      importing
        value(i_stcd4) type stcd4 .
    methods set_xicms
      importing
        value(i_xicms) type j_1btcicms .
    methods set_xxipi
      importing
        value(i_xxipi) type j_1btcipi .
    methods set_xsubt
      importing
        value(i_xsubt) type j_1btcst .
    methods set_cfopc
      importing
        value(i_cfopc) type j_1bindus1 .
    methods set_txlw1
      importing
        value(i_txlw1) type j_1btaxlw1 .
    methods set_txlw2
      importing
        value(i_txlw2) type j_1btaxlw2 .
    methods set_ccc01
      importing
        value(i_ccc01) type ccc01 .
    methods set_ccc02
      importing
        value(i_ccc02) type ccc02 .
    methods set_ccc03
      importing
        value(i_ccc03) type ccc03 .
    methods set_ccc04
      importing
        value(i_ccc04) type ccc04 .
    methods set_cassd
      importing
        value(i_cassd) type cassd_x .
    methods set_kdkg1
      importing
        value(i_kdkg1) type kdkg1 .
    methods set_kdkg2
      importing
        value(i_kdkg2) type kdkg2 .
    methods set_kdkg3
      importing
        value(i_kdkg3) type kdkg3 .
    methods set_kdkg4
      importing
        value(i_kdkg4) type kdkg4 .
    methods set_kdkg5
      importing
        value(i_kdkg5) type kdkg5 .
    methods set_nodel
      importing
        value(i_nodel) type nodel_x .
    methods set_xsub2
      importing
        value(i_xsub2) type j_1btcst .
    methods set_j_1kfrepre
      importing
        value(i_j_1kfrepre) type repres .
    methods set_j_1kftbus
      importing
        value(i_j_1kftbus) type gestyp .
    methods set_j_1kftind
      importing
        value(i_j_1kftind) type indtyp .
    methods set_stcd5
      importing
        value(i_stcd5) type stcd5 .
    methods set_cvp_xblck
      importing
        value(i_cvp_xblck) type cvp_xblck .
    methods set_suframa
      importing
        value(i_suframa) type j_1bsuframa .
    methods set_rg
      importing
        value(i_rg) type j_1brg .
    methods set_exp
      importing
        value(i_exp) type j_1bexp .
    methods set_uf
      importing
        value(i_uf) type j_1buf .
    methods set_rgdate
      importing
        value(i_rgdate) type j_1brgdate .
    methods set_ric
      importing
        value(i_ric) type j_1bric .
    methods set_rne
      importing
        value(i_rne) type j_1brne .
    methods set_rnedate
      importing
        value(i_rnedate) type j_1brnedate .
    methods set_cnae
      importing
        value(i_cnae) type j_1bcnae .
    methods set_legalnat
      importing
        value(i_legalnat) type j_1blegalnat .
    methods set_crtn
      importing
        value(i_crtn) type j_1bcrtn .
    methods set_icmstaxpay
      importing
        value(i_icmstaxpay) type j_1bicmstaxpay .
    methods set_indtyp
      importing
        value(i_indtyp) type j_1bindtyp .
    methods set_tdt
      importing
        value(i_tdt) type j_1btdt .
    methods set_comsize
      importing
        value(i_comsize) type j_1bcomsize .
    methods set_decregpc
      importing
        value(i_decregpc) type j_1bdecregpc .
  protected section.

    data: data  type ref to cmds_ei_vmd_central_data,
          datax type ref to cmds_ei_vmd_central_data_xflag.
    methods: constructor importing i_data  type ref to cmds_ei_vmd_central_data
                                   i_datax type ref to cmds_ei_vmd_central_data_xflag.
endclass.



class zcl_cmd_central implementation.


  method constructor.
    data = i_data.
    datax = i_datax.
  endmethod.


  method get_data.
    e_data = data.
    e_datax = datax.
  endmethod.


  method set_aufsd. data->aufsd = i_aufsd. datax->aufsd = abap_true . endmethod.


  method set_bahne. data->bahne = i_bahne. datax->bahne = abap_true . endmethod.


  method set_bahns. data->bahns = i_bahns. datax->bahns = abap_true . endmethod.


  method set_bbbnr. data->bbbnr = i_bbbnr. datax->bbbnr = abap_true . endmethod.


  method set_bbsnr. data->bbsnr = i_bbsnr. datax->bbsnr = abap_true . endmethod.


  method set_begru. data->begru = i_begru. datax->begru = abap_true . endmethod.


  method set_bran1. data->bran1 = i_bran1. datax->bran1 = abap_true . endmethod.


  method set_bran2. data->bran2 = i_bran2. datax->bran2 = abap_true . endmethod.


  method set_bran3. data->bran3 = i_bran3. datax->bran3 = abap_true . endmethod.


  method set_bran4. data->bran4 = i_bran4. datax->bran4 = abap_true . endmethod.


  method set_bran5. data->bran5 = i_bran5. datax->bran5 = abap_true . endmethod.


  method set_brsch. data->brsch = i_brsch. datax->brsch = abap_true . endmethod.


  method set_bubkz. data->bubkz = i_bubkz. datax->bubkz = abap_true . endmethod.


  method set_cassd. data->cassd = i_cassd. datax->cassd = abap_true . endmethod.


  method set_ccc01. data->ccc01 = i_ccc01. datax->ccc01 = abap_true . endmethod.


  method set_ccc02. data->ccc02 = i_ccc02. datax->ccc02 = abap_true . endmethod.


  method set_ccc03. data->ccc03 = i_ccc03. datax->ccc03 = abap_true . endmethod.


  method set_ccc04. data->ccc04 = i_ccc04. datax->ccc04 = abap_true . endmethod.


  method set_cfopc. data->cfopc = i_cfopc. datax->cfopc = abap_true . endmethod.


  method set_cityc. data->cityc = i_cityc. datax->cityc = abap_true . endmethod.


  method set_civve. data->civve = i_civve. datax->civve = abap_true . endmethod.


  method set_cnae. data->cnae = i_cnae. datax->cnae = abap_true . endmethod.


  method set_comsize. data->comsize = i_comsize. datax->comsize = abap_true . endmethod.


  method set_counc. data->counc = i_counc. datax->counc = abap_true . endmethod.


  method set_crtn. data->crtn = i_crtn. datax->crtn = abap_true . endmethod.


  method set_cvp_xblck. data->cvp_xblck = i_cvp_xblck. datax->cvp_xblck = abap_true . endmethod.


  method set_data.
    data = i_data.
  endmethod.


  method set_decregpc. data->decregpc = i_decregpc. datax->decregpc = abap_true . endmethod.


  method set_dtams. data->dtams = i_dtams. datax->dtams = abap_true . endmethod.


  method set_dtaws. data->dtaws = i_dtaws. datax->dtaws = abap_true . endmethod.


  method set_exp. data->exp = i_exp. datax->exp = abap_true . endmethod.


  method set_faksd. data->faksd = i_faksd. datax->faksd = abap_true . endmethod.


  method set_fiskn. data->fiskn = i_fiskn. datax->fiskn = abap_true . endmethod.


  method set_fityp. data->fityp = i_fityp. datax->fityp = abap_true . endmethod.


  method set_gform. data->gform = i_gform. datax->gform = abap_true . endmethod.


  method set_hzuor. data->hzuor = i_hzuor. datax->hzuor = abap_true . endmethod.


  method set_icmstaxpay. data->icmstaxpay = i_icmstaxpay. datax->icmstaxpay = abap_true . endmethod.


  method set_indtyp. data->indtyp = i_indtyp. datax->indtyp = abap_true . endmethod.


  method set_jmjah. data->jmjah = i_jmjah. datax->jmjah = abap_true . endmethod.


  method set_jmzah. data->jmzah = i_jmzah. datax->jmzah = abap_true . endmethod.


  method set_j_1kfrepre. data->j_1kfrepre = i_j_1kfrepre. datax->j_1kfrepre = abap_true . endmethod.


  method set_j_1kftbus. data->j_1kftbus = i_j_1kftbus. datax->j_1kftbus = abap_true . endmethod.


  method set_j_1kftind. data->j_1kftind = i_j_1kftind. datax->j_1kftind = abap_true . endmethod.


  method set_katr1. data->katr1 = i_katr1. datax->katr1 = abap_true . endmethod.


  method set_katr10. data->katr10 = i_katr10. datax->katr10 = abap_true . endmethod.


  method set_katr2. data->katr2 = i_katr2. datax->katr2 = abap_true . endmethod.


  method set_katr3. data->katr3 = i_katr3. datax->katr3 = abap_true . endmethod.


  method set_katr4. data->katr4 = i_katr4. datax->katr4 = abap_true . endmethod.


  method set_katr5. data->katr5 = i_katr5. datax->katr5 = abap_true . endmethod.


  method set_katr6. data->katr6 = i_katr6. datax->katr6 = abap_true . endmethod.


  method set_katr7. data->katr7 = i_katr7. datax->katr7 = abap_true . endmethod.


  method set_katr8. data->katr8 = i_katr8. datax->katr8 = abap_true . endmethod.


  method set_katr9. data->katr9 = i_katr9. datax->katr9 = abap_true . endmethod.


  method set_kdkg1. data->kdkg1 = i_kdkg1. datax->kdkg1 = abap_true . endmethod.


  method set_kdkg2. data->kdkg2 = i_kdkg2. datax->kdkg2 = abap_true . endmethod.


  method set_kdkg3. data->kdkg3 = i_kdkg3. datax->kdkg3 = abap_true . endmethod.


  method set_kdkg4. data->kdkg4 = i_kdkg4. datax->kdkg4 = abap_true . endmethod.


  method set_kdkg5. data->kdkg5 = i_kdkg5. datax->kdkg5 = abap_true . endmethod.


  method set_knrza. data->knrza = i_knrza. datax->knrza = abap_true . endmethod.


  method set_konzs. data->konzs = i_konzs. datax->konzs = abap_true . endmethod.


  method set_ktocd. data->ktocd = i_ktocd. datax->ktocd = abap_true . endmethod.


  method set_ktokd. data->ktokd = i_ktokd. datax->ktokd = abap_true . endmethod.


  method set_kukla. data->kukla = i_kukla. datax->kukla = abap_true . endmethod.


  method set_legalnat. data->legalnat = i_legalnat. datax->legalnat = abap_true . endmethod.


  method set_lifnr. data->lifnr = i_lifnr. datax->lifnr = abap_true . endmethod.


  method set_lifsd. data->lifsd = i_lifsd. datax->lifsd = abap_true . endmethod.


  method set_locco. data->locco = i_locco. datax->locco = abap_true . endmethod.


  method set_loevm. data->loevm = i_loevm. datax->loevm = abap_true . endmethod.


  method set_milve. data->milve = i_milve. datax->milve = abap_true . endmethod.


  method set_niels. data->niels = i_niels. datax->niels = abap_true . endmethod.


  method set_nodel. data->nodel = i_nodel. datax->nodel = abap_true . endmethod.


  method set_periv. data->periv = i_periv. datax->periv = abap_true . endmethod.


  method set_rg. data->rg = i_rg. datax->rg = abap_true . endmethod.


  method set_rgdate. data->rgdate = i_rgdate. datax->rgdate = abap_true . endmethod.


  method set_ric. data->ric = i_ric. datax->ric = abap_true . endmethod.


  method set_rne. data->rne = i_rne. datax->rne = abap_true . endmethod.


  method set_rnedate. data->rnedate = i_rnedate. datax->rnedate = abap_true . endmethod.


  method set_rpmkr. data->rpmkr = i_rpmkr. datax->rpmkr = abap_true . endmethod.


  method set_sperr. data->sperr = i_sperr. datax->sperr = abap_true . endmethod.


  method set_stcd1. data->stcd1 = i_stcd1. datax->stcd1 = abap_true . endmethod.


  method set_stcd2. data->stcd2 = i_stcd2. datax->stcd2 = abap_true . endmethod.


  method set_stcd3. data->stcd3 = i_stcd3. datax->stcd3 = abap_true . endmethod.


  method set_stcd4. data->stcd4 = i_stcd4. datax->stcd4 = abap_true . endmethod.


  method set_stcd5. data->stcd5 = i_stcd5. datax->stcd5 = abap_true . endmethod.


  method set_stcdt. data->stcdt = i_stcdt. datax->stcdt = abap_true . endmethod.


  method set_stceg. data->stceg = i_stceg. datax->stceg = abap_true . endmethod.


  method set_stkza. data->stkza = i_stkza. datax->stkza = abap_true . endmethod.


  method set_stkzn. data->stkzn = i_stkzn. datax->stkzn = abap_true . endmethod.


  method set_stkzu. data->stkzu = i_stkzu. datax->stkzu = abap_true . endmethod.


  method set_suframa. data->suframa = i_suframa. datax->suframa = abap_true . endmethod.


  method set_tdt. data->tdt = i_tdt. datax->tdt = abap_true . endmethod.


  method set_txlw1. data->txlw1 = i_txlw1. datax->txlw1 = abap_true . endmethod.


  method set_txlw2. data->txlw2 = i_txlw2. datax->txlw2 = abap_true . endmethod.


  method set_uf. data->uf = i_uf. datax->uf = abap_true . endmethod.


  method set_umjah. data->umjah = i_umjah. datax->umjah = abap_true . endmethod.


  method set_umsa1. data->umsa1 = i_umsa1. datax->umsa1 = abap_true . endmethod.


  method set_uwaer. data->uwaer = i_uwaer. datax->uwaer = abap_true . endmethod.


  method set_vbund. data->vbund = i_vbund. datax->vbund = abap_true . endmethod.


  method set_xicms. data->xicms = i_xicms. datax->xicms = abap_true . endmethod.


  method set_xsub2. data->xsub2 = i_xsub2. datax->xsub2 = abap_true . endmethod.


  method set_xsubt. data->xsubt = i_xsubt. datax->xsubt = abap_true . endmethod.


  method set_xxipi. data->xxipi = i_xxipi. datax->xxipi = abap_true . endmethod.


  method set_xzemp. data->xzemp = i_xzemp. datax->xzemp = abap_true . endmethod.

  method create_instance.
    if i_extension_id is initial.
      r_central = new #( i_data = i_data
                         i_datax =  i_datax ).
    else.
      data: subclass type ref to object.
      try.
          data(subclass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-central ).
          create object subclass type (subclass_abs_name)
           exporting
            i_data = i_data
            i_datax =  i_datax.
          r_central ?= subclass.
        catch: zcx_cmd_no_extension.
          r_central = new #( i_data = i_data
                       i_datax =  i_datax ).
      endtry.
    endif.
  endmethod.

endclass.
