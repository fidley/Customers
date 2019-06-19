class zcl_cmd_sales definition
  public
  create protected.

  public section.

    data texts type ref to zcl_cmd_texts .
    class-methods: create_instance importing i_extension_id type guid_32
                                   returning value(r_sales) type ref to zcl_cmd_sales.
    methods set_task
      importing
        value(i_task) type zcl_cmd_util=>t_mode .
    methods set_data
      importing
        !i_data type ref to cmds_ei_sales .
    methods add_partner_function
      importing
        value(i_function)    type parvw
        value(i_partner)     type gpanr
        value(i_description) type knref optional .
    methods delete_partner_function
      importing
        value(i_function) type parvw
        value(i_partner)  type gpanr optional .
    methods change_partner_function
      importing
        value(i_function)    type parvw
        value(i_partner_old) type gpanr
        value(i_partner)     type gpanr
        value(i_description) type knref optional .
    methods set_begru
      importing
        value(i_begru) type begru .
    methods set_loevm
      importing
        value(i_loevm) type loevm_v .
    methods set_versg
      importing
        value(i_versg) type stgku .
    methods set_aufsd
      importing
        value(i_aufsd) type aufsd_v .
    methods set_kalks
      importing
        value(i_kalks) type kalks .
    methods set_kdgrp
      importing
        value(i_kdgrp) type kdgrp .
    methods set_bzirk
      importing
        value(i_bzirk) type bzirk .
    methods set_konda
      importing
        value(i_konda) type konda .
    methods set_pltyp
      importing
        value(i_pltyp) type pltyp .
    methods set_awahr
      importing
        value(i_awahr) type awahr .
    methods set_inco1
      importing
        value(i_inco1) type inco1 .
    methods set_inco2
      importing
        value(i_inco2) type inco2 .
    methods set_lifsd
      importing
        value(i_lifsd) type lifsd_v .
    methods set_autlf
      importing
        value(i_autlf) type autlf .
    methods set_antlf
      importing
        value(i_antlf) type antlf .
    methods set_kztlf
      importing
        value(i_kztlf) type kztlf .
    methods set_kzazu
      importing
        value(i_kzazu) type kzazu_d .
    methods set_chspl
      importing
        value(i_chspl) type chspl .
    methods set_lprio
      importing
        value(i_lprio) type lprio .
    methods set_eikto
      importing
        value(i_eikto) type eikto .
    methods set_vsbed
      importing
        value(i_vsbed) type vsbed .
    methods set_faksd
      importing
        value(i_faksd) type faksd_v .
    methods set_mrnkz
      importing
        value(i_mrnkz) type mrnkz .
    methods set_perfk
      importing
        value(i_perfk) type perfk .
    methods set_perrl
      importing
        value(i_perrl) type perrl .
    methods set_waers
      importing
        value(i_waers) type waers_v02d .
    methods set_ktgrd
      importing
        value(i_ktgrd) type ktgrd .
    methods set_zterm
      importing
        value(i_zterm) type dzterm .
    methods set_vwerk
      importing
        value(i_vwerk) type dwerk_ext .
    methods set_vkgrp
      importing
        value(i_vkgrp) type vkgrp .
    methods set_vkbur
      importing
        value(i_vkbur) type vkbur .
    methods set_vsort
      importing
        value(i_vsort) type vsort .
    methods set_kvgr1
      importing
        value(i_kvgr1) type kvgr1 .
    methods set_kvgr2
      importing
        value(i_kvgr2) type kvgr2 .
    methods set_kvgr3
      importing
        value(i_kvgr3) type kvgr3 .
    methods set_kvgr4
      importing
        value(i_kvgr4) type kvgr4 .
    methods set_kvgr5
      importing
        value(i_kvgr5) type kvgr5 .
    methods set_bokre
      importing
        value(i_bokre) type bokre .
    methods set_kurst
      importing
        value(i_kurst) type kurst .
    methods set_prfre
      importing
        value(i_prfre) type prfre .
    methods set_klabc
      importing
        value(i_klabc) type klabc .
    methods set_kabss
      importing
        value(i_kabss) type kabssch_cm .
    methods set_kkber
      importing
        value(i_kkber) type kkber .
    methods set_cassd
      importing
        value(i_cassd) type cassd_v .
    methods set_rdoff
      importing
        value(i_rdoff) type rdoff .
    methods set_agrel
      importing
        value(i_agrel) type agrel .
    methods set_megru
      importing
        value(i_megru) type megru .
    methods set_uebto
      importing
        value(i_uebto) type uebto .
    methods set_untto
      importing
        value(i_untto) type untto .
    methods set_uebtk
      importing
        value(i_uebtk) type uebtk_v .
    methods set_pvksm
      importing
        value(i_pvksm) type pvksm .
    methods set_podkz
      importing
        value(i_podkz) type podkz .
    methods set_podtg
      importing
        value(i_podtg) type podtg .
    methods set_blind
      importing
        value(i_blind) type blind_sd .
    methods set_prat1
      importing
        value(i_prat1) type kuat1 .
    methods set_prat2
      importing
        value(i_prat2) type kuat2 .
    methods set_prat3
      importing
        value(i_prat3) type kuat3 .
    methods set_prat4
      importing
        value(i_prat4) type kuat4 .
    methods set_prat5
      importing
        value(i_prat5) type kuat5 .
    methods set_prat6
      importing
        value(i_prat6) type kuat6 .
    methods set_prat7
      importing
        value(i_prat7) type kuat7 .
    methods set_prat8
      importing
        value(i_prat8) type kuat8 .
    methods set_prat9
      importing
        value(i_prat9) type kuat9 .
    methods set_prata
      importing
        value(i_prata) type kuata .
    methods set_cvp_xblck_v
      importing
        value(i_cvp_xblck_v) type cvp_xblck .
    methods set_incov
      importing
        value(i_incov) type incov .
    methods set_inco2_l
      importing
        value(i_inco2_l) type inco2_l .
    methods set_inco3_l
      importing
        value(i_inco3_l) type inco3_l .

  protected section.
    data: ref_data type ref to cmds_ei_sales.
    data: extension_id type guid_32.
    methods: contructor importing i_extension_id type guid_32 optional.

endclass.



class zcl_cmd_sales implementation.


  method add_partner_function.
    assign ref_data->functions-functions[ data_key-parvw = i_function
                                          data-partner   = i_partner
                                           ] to field-symbol(<par>).
    if sy-subrc ne 0.
      insert value #(  data_key-parvw = i_function
                       data-partner = i_partner
                       data-knref   = i_description
                       task = zcl_cmd_util=>mode-create
                       ) into table ref_data->functions-functions assigning <par>.
      if sy-subrc eq 0.
        loop at ref_data->functions-functions assigning field-symbol(<epar>) where data_key-parvw eq i_function.
          if <epar>-data_key-parza gt <par>-data_key-parza.
            <par>-data_key-parza = <epar>-data_key-parza.
          endif.
        endloop.
        add 1 to <par>-data_key-parza.
        if ref_data->task ne zcl_cmd_util=>mode-create and
          ref_data->task ne zcl_cmd_util=>mode-delete.
          ref_data->task = zcl_cmd_util=>mode-change.
          ref_data->functions-current_state = zcl_cmd_util=>mode-change.
          ref_data->datax-vkbur = abap_true.
        endif.

      endif.
    endif.
  endmethod.


  method change_partner_function.
    assign ref_data->functions-functions[ data_key-parvw = i_function
                                          data-partner   = i_partner_old
                                           ] to field-symbol(<par>).
    if sy-subrc eq 0.
      <par>-task = zcl_cmd_util=>mode-change.
      <par>-data-partner = i_partner.
      <par>-data-knref   = i_description.
      if ref_data->task ne zcl_cmd_util=>mode-create and
        ref_data->task ne zcl_cmd_util=>mode-delete.
        ref_data->task = zcl_cmd_util=>mode-change.
        ref_data->functions-current_state = zcl_cmd_util=>mode-change..
        ref_data->datax-vkbur = abap_true.
      endif.
    endif.
  endmethod.


  method delete_partner_function.
    if i_partner is not initial.
      assign ref_data->functions-functions[ data_key-parvw = i_function
                                            data-partner   = i_partner
                                             ] to field-symbol(<par>).
      if sy-subrc eq 0.
        <par>-task = zcl_cmd_util=>mode-delete.
        if ref_data->task ne zcl_cmd_util=>mode-create and
           ref_data->task ne zcl_cmd_util=>mode-delete.
          ref_data->task = zcl_cmd_util=>mode-change.
          ref_data->functions-current_state = zcl_cmd_util=>mode-change.
          ref_data->datax-vkbur = abap_true.
        endif.
        delete ref_data->functions-functions where data_key-parvw = i_function
                                               and data-partner = i_partner.
      endif.
    else.
      loop at ref_data->functions-functions assigning <par> where data_key-parvw = i_function.
        <par>-task = zcl_cmd_util=>mode-delete.
        ref_data->functions-current_state = zcl_cmd_util=>mode-change.
        delete ref_data->functions-functions.
        ref_data->datax-vkbur = abap_true.
      endloop.
    endif.

  endmethod.


  method set_agrel.
    ref_data->data-agrel = i_agrel. ref_data->datax-agrel = abap_true .
  endmethod.


  method set_antlf.
    ref_data->data-antlf = i_antlf. ref_data->datax-antlf = abap_true .
  endmethod.


  method set_aufsd.
    ref_data->data-aufsd = i_aufsd. ref_data->datax-aufsd = abap_true .
  endmethod.


  method set_autlf.
    ref_data->data-autlf = i_autlf. ref_data->datax-autlf = abap_true .
  endmethod.


  method set_awahr.
    ref_data->data-awahr = i_awahr. ref_data->datax-awahr = abap_true .
  endmethod.


  method set_begru.
    ref_data->data-begru = i_begru. ref_data->datax-begru = abap_true .
  endmethod.


  method set_blind.
    ref_data->data-blind = i_blind. ref_data->datax-blind = abap_true .
  endmethod.


  method set_bokre.
    ref_data->data-bokre = i_bokre. ref_data->datax-bokre = abap_true .
  endmethod.


  method set_bzirk.
    ref_data->data-bzirk = i_bzirk. ref_data->datax-bzirk = abap_true .
  endmethod.


  method set_cassd.
    ref_data->data-cassd = i_cassd. ref_data->datax-cassd = abap_true .
  endmethod.


  method set_chspl.
    ref_data->data-chspl = i_chspl. ref_data->datax-chspl = abap_true .
  endmethod.


  method set_cvp_xblck_v.
    ref_data->data-cvp_xblck_v = i_cvp_xblck_v. ref_data->datax-cvp_xblck_v = abap_true .
  endmethod.


  method set_data.
    ref_data = i_data.
    texts ?= zcl_cmd_texts=>create_instance( i_extension_id = extension_id i_texts =  ref #( ref_data->texts )  ).
  endmethod.


  method set_eikto.
    ref_data->data-eikto = i_eikto. ref_data->datax-eikto = abap_true .
  endmethod.


  method set_faksd.
    ref_data->data-faksd = i_faksd. ref_data->datax-faksd = abap_true .
  endmethod.


  method set_inco1.
    ref_data->data-inco1 = i_inco1. ref_data->datax-inco1 = abap_true .
  endmethod.


  method set_inco2.
    ref_data->data-inco2 = i_inco2. ref_data->datax-inco2 = abap_true .
  endmethod.


  method set_inco2_l.
    ref_data->data-inco2_l = i_inco2_l. ref_data->datax-inco2_l = abap_true .
  endmethod.


  method set_inco3_l.
    ref_data->data-inco3_l = i_inco3_l. ref_data->datax-inco3_l = abap_true .
  endmethod.


  method set_incov.
    ref_data->data-incov = i_incov. ref_data->datax-incov = abap_true .
  endmethod.


  method set_kabss.
    ref_data->data-kabss = i_kabss. ref_data->datax-kabss = abap_true .
  endmethod.


  method set_kalks.
    ref_data->data-kalks = i_kalks. ref_data->datax-kalks = abap_true .
  endmethod.


  method set_kdgrp.
    ref_data->data-kdgrp = i_kdgrp. ref_data->datax-kdgrp = abap_true .
  endmethod.


  method set_kkber.
    ref_data->data-kkber = i_kkber. ref_data->datax-kkber = abap_true .
  endmethod.


  method set_klabc.
    ref_data->data-klabc = i_klabc. ref_data->datax-klabc = abap_true .
  endmethod.


  method set_konda.
    ref_data->data-konda = i_konda. ref_data->datax-konda = abap_true .
  endmethod.


  method set_ktgrd.
    ref_data->data-ktgrd = i_ktgrd. ref_data->datax-ktgrd = abap_true .
  endmethod.


  method set_kurst.
    ref_data->data-kurst = i_kurst. ref_data->datax-kurst = abap_true .
  endmethod.


  method set_kvgr1.
    ref_data->data-kvgr1 = i_kvgr1. ref_data->datax-kvgr1 = abap_true .
  endmethod.


  method set_kvgr2.
    ref_data->data-kvgr2 = i_kvgr2. ref_data->datax-kvgr2 = abap_true .
  endmethod.


  method set_kvgr3.
    ref_data->data-kvgr3 = i_kvgr3. ref_data->datax-kvgr3 = abap_true .
  endmethod.


  method set_kvgr4.
    ref_data->data-kvgr4 = i_kvgr4. ref_data->datax-kvgr4 = abap_true .
  endmethod.


  method set_kvgr5.
    ref_data->data-kvgr5 = i_kvgr5. ref_data->datax-kvgr5 = abap_true .
  endmethod.


  method set_kzazu.
    ref_data->data-kzazu = i_kzazu. ref_data->datax-kzazu = abap_true .
  endmethod.


  method set_kztlf.
    ref_data->data-kztlf = i_kztlf. ref_data->datax-kztlf = abap_true .
  endmethod.


  method set_lifsd.
    ref_data->data-lifsd = i_lifsd. ref_data->datax-lifsd = abap_true .
  endmethod.


  method set_loevm.
    ref_data->data-loevm = i_loevm. ref_data->datax-loevm = abap_true .
  endmethod.


  method set_lprio.
    ref_data->data-lprio = i_lprio. ref_data->datax-lprio = abap_true .
  endmethod.


  method set_megru.
    ref_data->data-megru = i_megru. ref_data->datax-megru = abap_true .
  endmethod.


  method set_mrnkz.
    ref_data->data-mrnkz = i_mrnkz. ref_data->datax-mrnkz = abap_true .
  endmethod.


  method set_perfk.
    ref_data->data-perfk = i_perfk. ref_data->datax-perfk = abap_true .
  endmethod.


  method set_perrl.
    ref_data->data-perrl = i_perrl. ref_data->datax-perrl = abap_true .
  endmethod.


  method set_pltyp.
    ref_data->data-pltyp = i_pltyp. ref_data->datax-pltyp = abap_true .
  endmethod.


  method set_podkz.
    ref_data->data-podkz = i_podkz. ref_data->datax-podkz = abap_true .
  endmethod.


  method set_podtg.
    ref_data->data-podtg = i_podtg. ref_data->datax-podtg = abap_true .
  endmethod.


  method set_prat1.
    ref_data->data-prat1 = i_prat1. ref_data->datax-prat1 = abap_true .
  endmethod.


  method set_prat2.
    ref_data->data-prat2 = i_prat2. ref_data->datax-prat2 = abap_true .
  endmethod.


  method set_prat3.
    ref_data->data-prat3 = i_prat3. ref_data->datax-prat3 = abap_true .
  endmethod.


  method set_prat4.
    ref_data->data-prat4 = i_prat4. ref_data->datax-prat4 = abap_true .
  endmethod.


  method set_prat5.
    ref_data->data-prat5 = i_prat5. ref_data->datax-prat5 = abap_true .
  endmethod.


  method set_prat6.
    ref_data->data-prat6 = i_prat6. ref_data->datax-prat6 = abap_true .
  endmethod.


  method set_prat7.
    ref_data->data-prat7 = i_prat7. ref_data->datax-prat7 = abap_true .
  endmethod.


  method set_prat8.
    ref_data->data-prat8 = i_prat8. ref_data->datax-prat8 = abap_true .
  endmethod.


  method set_prat9.
    ref_data->data-prat9 = i_prat9. ref_data->datax-prat9 = abap_true .
  endmethod.


  method set_prata.
    ref_data->data-prata = i_prata. ref_data->datax-prata = abap_true .
  endmethod.


  method set_prfre.
    ref_data->data-prfre = i_prfre. ref_data->datax-prfre = abap_true .
  endmethod.


  method set_pvksm.
    ref_data->data-pvksm = i_pvksm. ref_data->datax-pvksm = abap_true .
  endmethod.


  method set_rdoff.
    ref_data->data-rdoff = i_rdoff. ref_data->datax-rdoff = abap_true .
  endmethod.


  method set_task.
    ref_data->task = i_task.
  endmethod.


  method set_uebtk.
    ref_data->data-uebtk = i_uebtk. ref_data->datax-uebtk = abap_true .
  endmethod.


  method set_uebto.
    ref_data->data-uebto = i_uebto. ref_data->datax-uebto = abap_true .
  endmethod.


  method set_untto.
    ref_data->data-untto = i_untto. ref_data->datax-untto = abap_true .
  endmethod.


  method set_versg.
    ref_data->data-versg = i_versg. ref_data->datax-versg = abap_true .
  endmethod.


  method set_vkbur.
    ref_data->data-vkbur = i_vkbur. ref_data->datax-vkbur = abap_true .
  endmethod.


  method set_vkgrp.
    ref_data->data-vkgrp = i_vkgrp. ref_data->datax-vkgrp = abap_true .
  endmethod.


  method set_vsbed.
    ref_data->data-vsbed = i_vsbed. ref_data->datax-vsbed = abap_true .
  endmethod.


  method set_vsort.
    ref_data->data-vsort = i_vsort. ref_data->datax-vsort = abap_true .
  endmethod.


  method set_vwerk.
    ref_data->data-vwerk = i_vwerk. ref_data->datax-vwerk = abap_true .
  endmethod.


  method set_waers.
    ref_data->data-waers = i_waers. ref_data->datax-waers = abap_true .
  endmethod.


  method set_zterm.
    ref_data->data-zterm = i_zterm. ref_data->datax-zterm = abap_true .
  endmethod.
  method create_instance.
    if i_extension_id is initial.
      r_sales = new #( ).
    else.
      data: subclass type ref to object.
      try.
          data(sublcass_abs_name) = zcl_cmd_extensions=>get_extension_class_abs_name( id = i_extension_id type = zcl_cmd_extensions=>class_extension-sales ).
          create object subclass type (sublcass_abs_name).
          r_sales ?= subclass.
        catch zcx_cmd_no_extension.
           r_sales = new #( ).
      endtry.
    endif.
  endmethod.

  method contructor.
    extension_id = i_extension_id.
  endmethod.

endclass.
