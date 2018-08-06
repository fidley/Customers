class zcl_cmd_company definition
  public
  final
  create private

  global friends zcl_cmd_customer .

  public section.

    data texts type ref to zcl_cmd_texts .

    methods get_data
      returning value(r_company) type ref to cmds_ei_company.

    methods set_task
      importing
                value(i_task) type zcl_cmd_util=>t_mode
      returning value(r_company)   type ref to zcl_cmd_company.
    methods set_data
      importing
                !i_company  type ref to cmds_ei_company
      returning value(r_company) type ref to zcl_cmd_company.
    methods set_sperr
      importing
                value(i_sperr) type sperb_b
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_loevm
      importing
                value(i_loevm) type loevm_b
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_zuawa
      importing
                value(i_zuawa) type dzuawa
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_akont
      importing
                value(i_akont) type akont
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_begru
      importing
                value(i_begru) type brgru
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_vzskz
      importing
                value(i_vzskz) type vzskz
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_zwels
      importing
                value(i_zwels) type dzwels
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xverr
      importing
                value(i_xverr) type xverr_knb1
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zahls
      importing
                value(i_zahls) type dzahls
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zterm
      importing
                value(i_zterm) type dzterm
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_eikto
      importing
                value(i_eikto) type eikto
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zsabe
      importing
                value(i_zsabe) type dzsabe_k
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_kverm
      importing
                value(i_kverm) type kverm
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_fdgrv
      importing
                value(i_fdgrv) type fdgrv
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_busab
      importing
                value(i_busab) type busab
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zindt
      importing
                value(i_zindt) type dzindt
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zinrt
      importing
                value(i_zinrt) type dzinrt
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_datlz
      importing
                value(i_datlz) type datlz
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xdezv
      importing
                value(i_xdezv) type xdezv
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_webtr
      importing
                value(i_webtr) type webtr
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_kultg
      importing
                value(i_kultg) type kultg
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_togru
      importing
                value(i_togru) type togru
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_hbkid
      importing
                value(i_hbkid) type hbkid
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xpore
      importing
                value(i_xpore) type xpore
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_blnkz
      importing
                value(i_blnkz) type blnkz
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_altkn
      importing
                value(i_altkn) type altkn
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zgrup
      importing
                value(i_zgrup) type dzgrup
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_urlid
      importing
                value(i_urlid) type urlid
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_mgrup
      importing
                value(i_mgrup) type mgrup
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_uzawe
      importing
                value(i_uzawe) type uzawe
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xedip
      importing
                value(i_xedip) type xedip
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_frgrp
      importing
                value(i_frgrp) type frgrp
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vrsdg
      importing
                value(i_vrsdg) type vrsdg
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_tlfxs
      importing
                value(i_tlfxs) type tlfxs
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_intad
      importing
                value(i_intad) type intad
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_guzte
      importing
                value(i_guzte) type guzte
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_gricd
      importing
                value(i_gricd) type j_1agicd_d
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_gridt
      importing
                value(i_gridt) type j_1adtyp_d
      returning value(r_company)    type ref to zcl_cmd_company .
    methods set_xausz
      importing
                value(i_xausz) type xausz
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_pernr
      importing
                value(i_pernr) type pernr_d
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_nodel
      importing
                value(i_nodel) type nodel_b
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_tlfns
      importing
                value(i_tlfns) type tlfns
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_knrze
      importing
                value(i_knrze) type knrze
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_knrzb
      importing
                value(i_knrzb) type knrzb
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zamim
      importing
                value(i_zamim) type dzamim
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zamiv
      importing
                value(i_zamiv) type dzamiv
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zamir
      importing
                value(i_zamir) type dzamir
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zamib
      importing
                value(i_zamib) type dzamib
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_zamio
      importing
                value(i_zamio) type dzamio
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_wakon
      importing
                value(i_wakon) type wakon
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vrbkz
      importing
                value(i_vrbkz) type vrbkz
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vlibb
      importing
                value(i_vlibb) type vlibb
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vrszl
      importing
                value(i_vrszl) type vrszl
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vrspr
      importing
                value(i_vrspr) type vrspr
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_vrsnr
      importing
                value(i_vrsnr) type vrsnr
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_verdt
      importing
                value(i_verdt) type verdt
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_perkz
      importing
                value(i_perkz) type perkz_knb1
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_remit
      importing
                value(i_remit) type remit
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xzver
      importing
                value(i_xzver) type xzver
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_ekvbd
      importing
                value(i_ekvbd) type ekvbd
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_sregl
      importing
                value(i_sregl) type sregl
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_xknzb
      importing
                value(i_xknzb) type xknzb
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_lockb
      importing
                value(i_lockb) type lockb
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_wbrsl
      importing
                value(i_wbrsl) type wbrsl
      returning value(r_company)    type ref to zcl_cmd_company.
    methods set_cession_kz
      importing
                value(i_cession_kz) type cession_kz
      returning value(r_company)         type ref to zcl_cmd_company.
    methods set_cvp_xblck_b
      importing
                value(i_cvp_xblck_b) type cvp_xblck
      returning value(r_company)          type ref to zcl_cmd_company.
    methods set_ciiucode
      importing
                value(i_ciiucode) type ciiucode
      returning value(r_company)       type ref to zcl_cmd_company.
  protected section.
  private section.
    data: ref_data type ref to cmds_ei_company.

endclass.



class zcl_cmd_company implementation.


  method set_akont.
    ref_data->data-akont = i_akont. ref_data->datax-akont = abap_true .
    r_company = me.
  endmethod.


  method set_altkn.
    ref_data->data-altkn = i_altkn. ref_data->datax-altkn = abap_true .
    r_company = me.
  endmethod.


  method set_begru.
    ref_data->data-begru = i_begru. ref_data->datax-begru = abap_true .
    r_company = me.
  endmethod.


  method set_blnkz.
    ref_data->data-blnkz = i_blnkz. ref_data->datax-blnkz = abap_true .
    r_company = me.
  endmethod.


  method set_busab.
    ref_data->data-busab = i_busab. ref_data->datax-busab = abap_true .
    r_company = me.
  endmethod.


  method set_cession_kz.
    ref_data->data-cession_kz = i_cession_kz. ref_data->datax-cession_kz = abap_true .
    r_company = me.
  endmethod.


  method set_ciiucode.
    ref_data->data-ciiucode = i_ciiucode. ref_data->datax-ciiucode = abap_true .
    r_company = me.
  endmethod.


  method set_cvp_xblck_b.
    ref_data->data-cvp_xblck_b = i_cvp_xblck_b. ref_data->datax-cvp_xblck_b = abap_true .
    r_company = me.
  endmethod.


  method set_data.
    ref_data = i_company.
    texts = new zsd_customer_texts( ref #( ref_data->texts ) ).
    r_company = me.
  endmethod.


  method set_datlz.
    ref_data->data-datlz = i_datlz. ref_data->datax-datlz = abap_true .
    r_company = me.
  endmethod.


  method set_eikto.
    ref_data->data-eikto = i_eikto. ref_data->datax-eikto = abap_true .
    r_company = me.
  endmethod.


  method set_ekvbd.
    ref_data->data-ekvbd = i_ekvbd. ref_data->datax-ekvbd = abap_true .
    r_company = me.
  endmethod.


  method set_fdgrv.
    ref_data->data-fdgrv = i_fdgrv. ref_data->datax-fdgrv = abap_true .
    r_company = me.
  endmethod.


  method set_frgrp.
    ref_data->data-frgrp = i_frgrp. ref_data->datax-frgrp = abap_true .
    r_company = me.
  endmethod.


  method set_gricd.
    ref_data->data-gricd = i_gricd. ref_data->datax-gricd = abap_true .
    r_company = me.
  endmethod.


  method set_gridt.
    ref_data->data-gridt = i_gridt. ref_data->datax-gridt = abap_true .
    r_company = me.
  endmethod.


  method set_guzte.
    ref_data->data-guzte = i_guzte. ref_data->datax-guzte = abap_true .
    r_company = me.
  endmethod.


  method set_hbkid.
    ref_data->data-hbkid = i_hbkid. ref_data->datax-hbkid = abap_true .
    r_company = me.
  endmethod.


  method set_intad.
    ref_data->data-intad = i_intad. ref_data->datax-intad = abap_true .
    r_company = me.
  endmethod.


  method set_knrzb.
    ref_data->data-knrzb = i_knrzb. ref_data->datax-knrzb = abap_true .
    r_company = me.
  endmethod.


  method set_knrze.
    ref_data->data-knrze = i_knrze. ref_data->datax-knrze = abap_true .
    r_company = me.
  endmethod.


  method set_kultg.
    ref_data->data-kultg = i_kultg. ref_data->datax-kultg = abap_true .
    r_company = me.
  endmethod.


  method set_kverm.
    ref_data->data-kverm = i_kverm. ref_data->datax-kverm = abap_true .
    r_company = me.
  endmethod.


  method set_lockb.
    ref_data->data-lockb = i_lockb. ref_data->datax-lockb = abap_true .
    r_company = me.
  endmethod.


  method set_loevm.
    ref_data->data-loevm = i_loevm. ref_data->datax-loevm = abap_true .
    r_company = me.
  endmethod.


  method set_mgrup.
    ref_data->data-mgrup = i_mgrup. ref_data->datax-mgrup = abap_true .
    r_company = me.
  endmethod.


  method set_nodel.
    ref_data->data-nodel = i_nodel. ref_data->datax-nodel = abap_true .
    r_company = me.
  endmethod.


  method set_perkz.
    ref_data->data-perkz = i_perkz. ref_data->datax-perkz = abap_true .
    r_company = me.
  endmethod.


  method set_pernr.
    ref_data->data-pernr = i_pernr. ref_data->datax-pernr = abap_true .
    r_company = me.
  endmethod.


  method set_remit.
    ref_data->data-remit = i_remit. ref_data->datax-remit = abap_true .
    r_company = me.
  endmethod.


  method set_sperr.
    ref_data->data-sperr = i_sperr. ref_data->datax-sperr = abap_true .
    r_company = me.
  endmethod.


  method set_sregl.
    ref_data->data-sregl = i_sregl. ref_data->datax-sregl = abap_true .
    r_company = me.
  endmethod.


  method set_task.
    ref_data->task = i_task.
    r_company = me.
  endmethod.


  method set_tlfns.
    ref_data->data-tlfns = i_tlfns. ref_data->datax-tlfns = abap_true .
    r_company = me.
  endmethod.


  method set_tlfxs.
    ref_data->data-tlfxs = i_tlfxs. ref_data->datax-tlfxs = abap_true .
    r_company = me.
  endmethod.


  method set_togru.
    ref_data->data-togru = i_togru. ref_data->datax-togru = abap_true .
    r_company = me.
  endmethod.


  method set_urlid.
    ref_data->data-urlid = i_urlid. ref_data->datax-urlid = abap_true .
    r_company = me.
  endmethod.


  method set_uzawe.
    ref_data->data-uzawe = i_uzawe. ref_data->datax-uzawe = abap_true .
    r_company = me.
  endmethod.


  method set_verdt.
    ref_data->data-verdt = i_verdt. ref_data->datax-verdt = abap_true .
    r_company = me.
  endmethod.


  method set_vlibb.
    ref_data->data-vlibb = i_vlibb. ref_data->datax-vlibb = abap_true .
    r_company = me.
  endmethod.


  method set_vrbkz.
    ref_data->data-vrbkz = i_vrbkz. ref_data->datax-vrbkz = abap_true .
    r_company = me.
  endmethod.


  method set_vrsdg.
    ref_data->data-vrsdg = i_vrsdg. ref_data->datax-vrsdg = abap_true .
    r_company = me.
  endmethod.


  method set_vrsnr.
    ref_data->data-vrsnr = i_vrsnr. ref_data->datax-vrsnr = abap_true .
    r_company = me.
  endmethod.


  method set_vrspr.
    ref_data->data-vrspr = i_vrspr. ref_data->datax-vrspr = abap_true .
    r_company = me.
  endmethod.


  method set_vrszl.
    ref_data->data-vrszl = i_vrszl. ref_data->datax-vrszl = abap_true .
    r_company = me.
  endmethod.


  method set_vzskz.
    ref_data->data-vzskz = i_vzskz. ref_data->datax-vzskz = abap_true .
    r_company = me.
  endmethod.


  method set_wakon.
    ref_data->data-wakon = i_wakon. ref_data->datax-wakon = abap_true .
    r_company = me.
  endmethod.


  method set_wbrsl.
    ref_data->data-wbrsl = i_wbrsl. ref_data->datax-wbrsl = abap_true .
    r_company = me.
  endmethod.


  method set_webtr.
    ref_data->data-webtr = i_webtr. ref_data->datax-webtr = abap_true .
    r_company = me.
  endmethod.


  method set_xausz.
    ref_data->data-xausz = i_xausz. ref_data->datax-xausz = abap_true .
    r_company = me.
  endmethod.


  method set_xdezv.
    ref_data->data-xdezv = i_xdezv. ref_data->datax-xdezv = abap_true .
    r_company = me.
  endmethod.


  method set_xedip.
    ref_data->data-xedip = i_xedip. ref_data->datax-xedip = abap_true .
    r_company = me.
  endmethod.


  method set_xknzb.
    ref_data->data-xknzb = i_xknzb. ref_data->datax-xknzb = abap_true .
    r_company = me.
  endmethod.


  method set_xpore.
    ref_data->data-xpore = i_xpore. ref_data->datax-xpore = abap_true .
    r_company = me.
  endmethod.


  method set_xverr.
    ref_data->data-xverr = i_xverr. ref_data->datax-xverr = abap_true .
    r_company = me.
  endmethod.


  method set_xzver.
    ref_data->data-xzver = i_xzver. ref_data->datax-xzver = abap_true .
    r_company = me.
  endmethod.


  method set_zahls.
    ref_data->data-zahls = i_zahls. ref_data->datax-zahls = abap_true .
    r_company = me.
  endmethod.


  method set_zamib.
    ref_data->data-zamib = i_zamib. ref_data->datax-zamib = abap_true .
    r_company = me.
  endmethod.


  method set_zamim.
    ref_data->data-zamim = i_zamim. ref_data->datax-zamim = abap_true .
    r_company = me.
  endmethod.


  method set_zamio.
    ref_data->data-zamio = i_zamio. ref_data->datax-zamio = abap_true .
    r_company = me.
  endmethod.


  method set_zamir.
    ref_data->data-zamir = i_zamir. ref_data->datax-zamir = abap_true .
    r_company = me.
  endmethod.


  method set_zamiv.
    ref_data->data-zamiv = i_zamiv. ref_data->datax-zamiv = abap_true .
    r_company = me.
  endmethod.


  method set_zgrup.
    ref_data->data-zgrup = i_zgrup. ref_data->datax-zgrup = abap_true .
    r_company = me.
  endmethod.


  method set_zindt.
    ref_data->data-zindt = i_zindt. ref_data->datax-zindt = abap_true .
    r_company = me.
  endmethod.


  method set_zinrt.
    ref_data->data-zinrt = i_zinrt. ref_data->datax-zinrt = abap_true .
    r_company = me.
  endmethod.


  method set_zsabe.
    ref_data->data-zsabe = i_zsabe. ref_data->datax-zsabe = abap_true .
    r_company = me.
  endmethod.


  method set_zterm.
    ref_data->data-zterm = i_zterm. ref_data->datax-zterm = abap_true .
    r_company = me.
  endmethod.


  method set_zuawa.
    ref_data->data-zuawa = i_zuawa. ref_data->datax-zuawa = abap_true .
    r_company = me.
  endmethod.


  method set_zwels.
    ref_data->data-zwels = i_zwels. ref_data->datax-zwels = abap_true .
    r_company = me.
  endmethod.
  method get_data.
    r_company = ref_data.
  endmethod.

endclass.
