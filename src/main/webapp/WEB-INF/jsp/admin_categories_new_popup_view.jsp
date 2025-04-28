<html lang="en" style="">
  <head>

    <%@ include file="includes/incld_header.jsp" %>
    <noscript data-n-css=""></noscript>
  </head>
  <body>
    <body" data-rr-ui-modal-open="" class="modal-open" style="overflow: hidden; padding-right: 9px;">
      <div class="fade modal-backdrop show" bis_skin_checked="1"></div>
      <div role="dialog" aria-modal="true" class="fade modal show" tabindex="-1" bis_skin_checked="1" style="display: block; padding-right: 9px;">
        <div class="modal-dialog modal-dialog modal-dialog-centered ks_mxwth1100" bis_skin_checked="1">
          <div class="modal-content ks_mod_comp" bis_skin_checked="1">
            <div class="ks_mod_body ks_d_flex ks_flex_col ks_hgt850" bis_skin_checked="1">
              <form>
                <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_brd_btm ks_ptb10_plr25" bis_skin_checked="1">
                  <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                    <div data-bs-toggle="dropdown" class="ks_d_flex ks_alg_itm_ctr ks_cs_pointer" bis_skin_checked="1">
                      <label class="ks_lbl ks_fw_md ks_mr5">New Categories</label>
                    </div>
                  </div>
                  <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                    <button class="ks_btn ks_btn_pm ks_ml12" type="button">Save</button>
                    <button class="ks_btn ks_btn_outline ks_ml12" type="button">Close</button>
                  </div>
                </div>
              </form>
              <fieldset class="ks_mtauto ks_h100 ks_disable_scroll">
                <div class="ks_d_flex ks_flex_row ks_alg_itm_start ks_w100 ks_h100" bis_skin_checked="1">
                  <div class="ks_col8 ks_h100 ks_d_flex ks_flex_col ks_bd_btm_left_rd10 ks_scrollable ks_brd_rgt" bis_skin_checked="1" style="width: 100% !important">
                    <div class="ks_h100 ks_p25" bis_skin_checked="1">
                      <div class="ks_d_flex ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_brd_btm ks_ptb15">
                        <div class="ks_col6 ks_d_flex ks_flex_col ks_alg_itm_start ks_jt_cont_st">
                          <div class="ks_row ks_w45 ks_mt20">
                            <div class="ks_d_flex ks_flex_col" bis_skin_checked="1">
                              <label class="ks_lbl ks_fw_md ks_sec_clr ks_mb8">ID <span class="ks_dg_clr">*</span>
                              </label>
                              <div class="ks_d_flex ks_flex_row ks_alg_itm_ctr ks_mt10">
                                <div class="ks_w90" ks_jt_cont_st="">
                                  <input class="ks_inp" type="text" placeholder="YYYYMMDD-C0001" title="ks_inp" name="ID">
                                  <div style="color: red; font-size: 13px;"></div>
                                </div>
                                <!--
                                <div class="ks_w20 ks_d_flex ks_jt_cont_end">
                                  <div class="ks_d_flex ks_jt_cont_ctr ks_alg_itm_ctr ">
                                    <input id="auto_chkbx2" type="checkbox" class="ks_sec_inp_chkbox">
                                    <label for="ks_auto_chkbox" class="ks_lbl ks_ml10 ks_cs_pointer">Auto</label>
                                  </div>
                                </div>
                                -->
                              </div>
                            </div>
                          </div>
                          <div class="ks_mt20 cus-row-recurring" bis_skin_checked="1">
                              <div class="d-flex gap-2" bis_skin_checked="1">
                                <div class="ks_w40" bis_skin_checked="1">
                                  <div class="ks_d_flex ks_flex_col" bis_skin_checked="1">
                                    <label class="ks_lbl ks_fw_md ks_sec_clr ks_mb8">Name <span class="ks_dg_clr">*</span>
                                    </label>
                                    <input class="ks_inp" type="text" placeholder="Enter Category Name" title="ks_inp" name="Name">
                                    <!--<input class="ks_inp ks_inp_date" type="date" min="2024-06-17" title="ks_inp ks_inp_date" name="issue_datetime" value=""> -->
                                    <div class="ks_fs13" style="color: red; font-size: 14px;" bis_skin_checked="1"></div>
                                  </div>
                                </div>
                                <div class="ks_col4" bis_skin_checked="1">
                                    <div class="ks_d_flex ks_flex_col" bis_skin_checked="1">
                                      <label class="ks_lbl ks_fw_md ks_mb8 ks_sec_clr">Parents</label>
                                      <select class="ks_select" title="ks_par_acc_sel" name="bill_type">
                                        <option value="0">None</option>
                                        <option value="1">House</option>
                                        <option value="2">Vehicle</option>
                                        <option value="3">Condo</option>
                                        <option value="4">Room</option>
                                      </select>
                                    </div>
                                </div>
                                <div class="ks_col4" bis_skin_checked="1">
                                  <div class="ks_d_flex ks_flex_col" bis_skin_checked="1">
                                    <label class="ks_lbl ks_fw_md ks_sec_clr ks_mb8">Display </label>
                                    <div class="ks_w100 ks_d_flex ks_alg_itm_ctr ks_div_blk ks_focus" bis_skin_checked="1">
                                      <div class="ks_w100" bis_skin_checked="1">
                                        <select class="ks_w100 ks_select ks_no_brd" title="ks_pay_term_sel" name="holding_tax">
                                          <option value="1">Yes</option>
                                          <option value="2">No</option>
                                        </select>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                            </div>
                          </div>
                        </div>
                        <div class="ks_col6 ks_d_flex ks_flex_col ks_alg_itm_end ks_jt_cont_end">
                          <div class="ks_d_flex ks_flex_col">
                            <div class="ks_d_flex ks_flex_col ks_gap_10">
                              <div class="ks_d_flex ks_alg_itm_ctr ks_gap_10">
                                <label class="ks_fs16 ks_fw_bd">Icon</label>
                              </div>
                              <label class="ks_sub_sec_clr2">Browse or drag &amp; drop icon here.</label>
                            </div>
                            <div class="ks_d_flex ks_flex_col ks_gap_10 ks_mt16 ks_mb15">
                              <div class="ks_file_upload_drag_drop_container  false">
                                <svg class="ks_wth45 ks_hgt45" width="45" height="44" viewBox="0 0 45 44">
                                  <path d="M26.166 27.5352H32.8926C35.7227 27.5352 37.1309 26.1133 37.1309 24.1035C37.1309 21.8203 35.5586 20.3574 33.0566 19.8789C32.8789 19.8379 32.8105 19.7422 32.8242 19.5508C32.8926 18.8945 32.9336 18.1016 32.8926 17.377C32.6875 13.3848 29.625 9.9668 25.3047 9.9668C21.9004 9.9668 19.8633 11.8125 18.5508 14.1914C18.4688 14.3555 18.3594 14.3828 18.1816 14.3418C15.2559 13.4805 12.3301 14.7793 12.4121 18.8672C12.4258 19.0586 12.3301 19.168 12.1387 19.168C9.33594 19.168 7.6543 20.959 7.6543 23.5293C7.6543 25.7441 9.28125 27.5352 12.2754 27.5352H18.6055V30.2148H12.2754C7.73633 30.2148 4.94727 27.248 4.94727 23.584C4.94727 20.2891 6.875 17.6914 10.0059 17.1582C10.1289 13.3027 13.998 10.8418 17.2383 11.6484C18.9609 9.17383 21.668 7.28711 25.3184 7.28711C31.0469 7.28711 35.4902 11.7441 35.4766 17.9238C38.1836 19.0039 39.8379 21.3281 39.8379 24.2266C39.8379 27.6719 37.2266 30.2148 32.9473 30.2148H26.166V27.5352ZM22.3789 37.0781C21.6816 37.0781 21.1211 36.5039 21.1211 35.834V23.2285L21.2441 20.7812L20.3691 21.7793L18.4551 23.707C18.2227 23.9531 17.9082 24.0898 17.5938 24.0898C16.9648 24.0898 16.4727 23.6387 16.4727 22.9961C16.4727 22.668 16.5957 22.4082 16.8281 22.1895L21.4219 17.8828C21.7637 17.5684 22.0508 17.4453 22.3789 17.4453C22.707 17.4453 23.0078 17.5684 23.3359 17.8828L27.9297 22.1895C28.1621 22.4082 28.2852 22.668 28.2852 22.9961C28.2852 23.6387 27.7793 24.0898 27.1504 24.0898C26.8496 24.0898 26.5352 23.9531 26.3164 23.707L24.3887 21.7793L23.5137 20.7812L23.6504 23.2285V35.834C23.6504 36.5039 23.0762 37.0781 22.3789 37.0781Z" fill="#76777f"></path>
                                </svg>
                                <label class="ks_fw_md ks_tx_alg_ctr">Drag and drop icon file <br> or <span class="ks_link ks_cs_pointer" role="button"> browse</span>
                                </label>
                              </div>
                              <button class="ks_btn ks_form_btn_pm ks_disabled">
                                <svg class="ks_wth20 ks_hgt20" width="20" height="20" viewBox="0 0 18 18">
                                  <path fill="" d="M3.91016 10.0285C3.91016 10.7359 4.04205 11.3973 4.30583 12.0128C4.56961 12.6243 4.9333 13.1639 5.39692 13.6315C5.86453 14.0991 6.40608 14.4648 7.02157 14.7286C7.63705 14.9924 8.2965 15.1242 8.99992 15.1242C9.70733 15.1242 10.3668 14.9924 10.9783 14.7286C11.5938 14.4648 12.1353 14.0991 12.6029 13.6315C13.0705 13.1639 13.4342 12.6243 13.694 12.0128C13.9578 11.3973 14.0897 10.7359 14.0897 10.0285C14.0897 9.84464 14.0317 9.69676 13.9158 9.58485C13.8039 9.46895 13.658 9.411 13.4782 9.411C13.3063 9.411 13.1664 9.46895 13.0585 9.58485C12.9506 9.69676 12.8967 9.84464 12.8967 10.0285C12.8967 10.568 12.7948 11.0736 12.5909 11.5452C12.3911 12.0168 12.1133 12.4325 11.7576 12.7922C11.4019 13.1479 10.9883 13.4257 10.5167 13.6255C10.049 13.8253 9.54347 13.9252 8.99992 13.9252C8.46037 13.9252 7.95479 13.8253 7.48318 13.6255C7.01557 13.4257 6.60192 13.1479 6.24221 12.7922C5.88651 12.4325 5.60874 12.0168 5.40891 11.5452C5.21307 11.0736 5.11515 10.568 5.11515 10.0285C5.11515 9.48094 5.21307 8.97136 5.40891 8.49976C5.60475 8.02415 5.87852 7.6085 6.23022 7.25279C6.58593 6.89709 6.99759 6.61932 7.4652 6.41949C7.93281 6.21965 8.43639 6.11974 8.97594 6.11974C9.1478 6.11974 9.31166 6.12773 9.46753 6.14372C9.6274 6.15571 9.77727 6.17569 9.91716 6.20367L8.43639 7.66645C8.38443 7.7224 8.34446 7.78435 8.31649 7.8523C8.28851 7.91624 8.27452 7.98818 8.27452 8.06812C8.27452 8.23198 8.33048 8.37186 8.44238 8.48777C8.55429 8.59967 8.69218 8.65563 8.85604 8.65563C9.0239 8.65563 9.15979 8.59967 9.2637 8.48777L11.5898 6.14971C11.7177 6.02182 11.7816 5.87394 11.7816 5.70608C11.7816 5.53822 11.7177 5.39234 11.5898 5.26845L9.2637 2.90641C9.15979 2.78651 9.0219 2.72656 8.85004 2.72656C8.69018 2.72656 8.55429 2.78651 8.44238 2.90641C8.33048 3.02232 8.27452 3.1642 8.27452 3.33206C8.27452 3.41199 8.28851 3.48593 8.31649 3.55387C8.34446 3.61782 8.38443 3.67777 8.43639 3.73372L9.7433 5.02265C9.63139 5.00267 9.50949 4.98668 9.3776 4.97469C9.24571 4.9587 9.11183 4.95071 8.97594 4.95071C8.27252 4.95071 7.61307 5.0826 6.99759 5.34638C6.38609 5.60617 5.84854 5.96786 5.38493 6.43148C4.92531 6.89509 4.56361 7.43464 4.29983 8.05013C4.04005 8.66162 3.91016 9.32107 3.91016 10.0285Z"></path>
                                </svg>Upload again </button>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!--Table -->
                      <div class="ks_row ks_mt25" bis_skin_checked="1">
                        <div class="ks_col12" bis_skin_checked="1">
                          <table class="ks_tbl_no_brd ks_w100">
                            <thead>
                              <tr>
                                <td class="ks_tbl_hd">Label Name</td>
                                <td class="ks_tbl_hd ks_wth150">Data type</td>
                                <td class="ks_tbl_hd ks_wth160" style="text-align: right; display: table-cell;">Max length</td>
                                <td class="ks_tbl_hd ks_wth160">UOM</td>
                                <td class="ks_tbl_hd ks_wth150">Require</td>
                                <td class="ks_tbl_hd ks_wth20 ks_p0"></td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="ks_tbl_data_row " style="vertical-align: baseline;">
                                <td class="ks_tbl_data position-relative">
                                  <div class="ks_w100 ks_pos_rlt" bis_skin_checked="1">
                                    <input type="text" class="ks_inp item__name_inp " placeholder="Name" maxlength="100" name="items.0.name">
                                  </div>
                                  <div class="ks_fs13" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <select class="ks_select w-100" title="Data type" name="items.T.type">
                                    <option data-value="T" value="T">Text</option>
                                    <option data-value="N" value="N">Number</option>
                                  </select>
                                </td>
                                <td class="ks_tbl_data">
                                  <input maxlength="19" class="ks_inp text-end" placeholder="0" name="items.0" type="text" value="1" inputmode="numeric" style="font-size: 1rem;">
                                  <div class="text-nowrap" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <input class="ks_inp" name="items.0" type="text" placeholder="Unit of Measure" inputmode="numeric" style="font-size: 1rem;">
                                  <div class="text-nowrap" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <select class="ks_select w-100" title="ks_par_acc_sel" name="items.0.yesOrNo">
                                    <option data-value="Y" value="Y">Yes</option>
                                    <option data-value="N" value="N">No</option>
                                  </select>
                                </td>
                                <td class="ks_tbl_data ks_p0">
                                  <svg class="ks_wth20 ks_hgt20 ks_dg_fill_clr ks_cs_pointer" viewBox="0 0 24 24">
                                    <path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11H7v-2h10v2z"></path>
                                  </svg>
                                </td>
                                <!--
                                <td class="ks_tbl_data ks_p0"><svg class="ks_wth20 ks_hgt20 ks_dg_fill_clr ks_cs_pointer" viewBox="0 0 24 24"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11H7v-2h10v2z"></path></svg></td>
                                -->
                              </tr>
                              <tr class="ks_tbl_data_row " style="vertical-align: baseline;">
                                <td class="ks_tbl_data position-relative">
                                  <div class="ks_w100 ks_pos_rlt" bis_skin_checked="1">
                                    <input type="text" class="ks_inp item__name_inp " placeholder="Name" maxlength="100" name="items.0.name">
                                  </div>
                                  <div class="ks_fs13" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <select class="ks_select w-100" title="Data type" name="items.0.type">
                                    <option data-value="" value="T">Text</option>
                                    <option data-value="" value="N">Number</option>
                                  </select>
                                </td>
                                <td class="ks_tbl_data">
                                  <input maxlength="19" class="ks_inp text-end" placeholder="1" name="items.0.price" type="text" value="1" inputmode="numeric" style="font-size: 1rem;">
                                  <div class="text-nowrap" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <input class="ks_inp" name="items.0.discount_amount" type="text" placeholder="Unit of Measure" inputmode="numeric" style="font-size: 1rem;">
                                  <div class="text-nowrap" bis_skin_checked="1" style="color: red; font-size: 14px;"></div>
                                </td>
                                <td class="ks_tbl_data">
                                  <select class="ks_select w-100" title="ks_par_acc_sel" name="items.0.yesOrNo">
                                    <option data-value="Y" value="Y">Yes</option>
                                    <option data-value="N" value="N">No</option>
                                  </select>
                                </td>
                                <td class="ks_tbl_data ks_p0">
                                  <svg class="ks_wth20 ks_hgt20 ks_dg_fill_clr ks_cs_pointer" viewBox="0 0 24 24">
                                    <path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm5 11H7v-2h10v2z"></path>
                                  </svg>
                                </td>
                              </tr>
                              <tr class="ks_tbl_data_row text-start "></tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      <!--End Table -->
                    </div>
                  </div>
                </div>
              </fieldset>
              <!--<form>-->
              <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_brd_btm ks_ptb10_plr25" bis_skin_checked="1">
                <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1"></div>
                <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                  <button data-bs-toggle="dropdown" type="button" class="ks_btn ks_btn_no_bg ks_btn_sm">
                    <div class="d-flex">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M7.99999 14.2222C8.85241 14.2222 9.65208 14.0597 10.399 13.7346C11.1501 13.4095 11.8127 12.9598 12.3866 12.3856C12.9605 11.8157 13.4099 11.1549 13.7348 10.4034C14.0597 9.65186 14.2222 8.84968 14.2222 7.99683C14.2222 7.14398 14.0576 6.3439 13.7285 5.5966C13.4036 4.84508 12.9541 4.18222 12.3802 3.60802C11.8106 3.03383 11.1501 2.58629 10.399 2.26542C9.64786 1.94032 8.84608 1.77777 7.99366 1.77777C7.14547 1.77777 6.3458 1.94032 5.59466 2.26542C4.84352 2.58629 4.181 3.03383 3.60709 3.60802C3.03741 4.18222 2.5901 4.84508 2.26517 5.5966C1.94024 6.3439 1.77777 7.14398 1.77777 7.99683C1.77777 8.84968 1.94024 9.65186 2.26517 10.4034C2.5901 11.1549 3.03741 11.8157 3.60709 12.3856C4.181 12.9598 4.84352 13.4095 5.59466 13.7346C6.3458 14.0597 7.14758 14.2222 7.99999 14.2222ZM5.06928 8.00316C5.06928 7.82161 5.12625 7.67384 5.24019 7.55985C5.35834 7.44163 5.50815 7.38252 5.68961 7.38252H7.386V5.68526C7.386 5.50372 7.44297 5.35594 7.55691 5.24195C7.67084 5.12373 7.81643 5.06462 7.99366 5.06462C8.17512 5.06462 8.32281 5.12373 8.43675 5.24195C8.55491 5.35594 8.61399 5.50372 8.61399 5.68526V7.38252H10.3167C10.4982 7.38252 10.6459 7.44163 10.7598 7.55985C10.8737 7.67384 10.9307 7.82161 10.9307 8.00316C10.9307 8.18049 10.8716 8.32826 10.7535 8.44647C10.6395 8.56047 10.4939 8.61747 10.3167 8.61747H8.61399V10.3147C8.61399 10.492 8.55491 10.6398 8.43675 10.758C8.32281 10.872 8.17512 10.929 7.99366 10.929C7.81643 10.929 7.67084 10.872 7.55691 10.758C7.44297 10.6398 7.386 10.492 7.386 10.3147V8.61747H5.68961C5.50815 8.61747 5.35834 8.56047 5.24019 8.44647C5.12625 8.32826 5.06928 8.18049 5.06928 8.00316Z" fill="#0f38ee"></path>
                      </svg>
                    </div>Add one more
                  </button>
                </div>
              </div>
              <!--</form>-->
            </div>
          </div>
        </div>
      </div>
    </body">
  </body>
</html>