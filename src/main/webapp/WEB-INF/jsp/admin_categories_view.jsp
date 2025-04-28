<!DOCTYPE html>
<html lang="en" style="">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>Admin | Categories</title>
    <link rel="preload" href="/img/avatar.2eb62363.svg" as="image" fetchpriority="high">
    <meta name="next-head-count" content="4">
    <link href="favicon.png" rel="shortcut icon" type="image/png">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">

    <%@ include file="includes/incld_header.jsp" %>

    <noscript data-n-css=""></noscript>
    <style data-n-href="/kh/_next/static/css/56ef877fcf3603bc.css">
      @font-face {
        font-family: __battombang_77d66f;
        src: url(/kh/_next/static/media/80bfa3033e7aaef6-s.p.ttf) format("truetype");
        font-display: swap;
        font-weight: 400
      }

      @font-face {
        font-family: __battombang_Fallback_77d66f;
        src: local("Arial");
        ascent-override: 122.07%;
        descent-override: 58.59%;
        line-gap-override: 3.27%;
        size-adjust: 100.00%
      }

      .__className_77d66f {
        font-family: __battombang_77d66f, __battombang_Fallback_77d66f;
        font-weight: 400
      }

      @font-face {
        font-family: __myFont_865d78;
        src: url(/kh/_next/static/media/cf30a5897882bb58-s.p.ttf) format("truetype");
        font-display: swap;
        font-weight: 500
      }

      @font-face {
        font-family: __myFont_Fallback_865d78;
        src: local("Arial");
        ascent-override: 122.25%;
        descent-override: 58.68%;
        line-gap-override: 1.81%;
        size-adjust: 99.86%
      }

      .__className_865d78 {
        font-family: __myFont_865d78, __myFont_Fallback_865d78;
        font-weight: 500
      }

      .resize_Container__jCV82 {
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        gap: 1rem
      }

      .resize_TopRow__UI_T6 {
        flex: 0 0 auto;
        text-align: center
      }

      .resize_BottomRow__mVllw {
        flex: 1 1 auto
      }

      .resize_Panel__G7Nrx {
        display: flex;
        flex-direction: column
      }

      .resize_PanelContent__KZoNy {
        height: 100%;
        width: 100%;
        background-color: var(--color-panel-background);
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        border-radius: .5rem
      }

      .resize_ResizeHandleOuter__8DKkn {
        flex: 0 0 1.5em;
        position: relative;
        outline: none;
        --background-color: transparent
      }

      .resize_ResizeHandleOuter__8DKkn[data-resize-handle-active] {
        --background-color: var(--color-solid-resize-bar-handle)
      }

      .resize_ResizeHandleInner__PbwyQ {
        position: absolute;
        top: .25em;
        bottom: .25em;
        left: .25em;
        right: .25em;
        border-radius: .25em;
        background-color: var(--background-color);
        transition: background-color .2s linear
      }

      .resize_Button__GvuIS {
        color: var(--color-default);
        background-color: var(--color-button-background);
        border: 1px solid var(--color-button-border);
        border-radius: .25rem;
        padding: .25rem .5rem;
        cursor: pointer
      }

      .resize_Button__GvuIS:hover {
        background-color: var(--color-button-background-hover)
      }

      .resize_Link__m9kTw {
        display: block;
        color: var(--color-link);
        margin-bottom: .5rem
      }

      .resize_Icon__IwEua {
        width: 1em;
        height: 1em;
        position: absolute;
        left: calc(50% - .5rem);
        top: calc(50% - .5rem)
      }
    </style>

    <style data-href="https://fonts.googleapis.com/icon?family=Material+Icons">
      @font-face {
        font-family: 'Material Icons';
        font-style: normal;
        font-weight: 400;
        src: url(https://fonts.gstatic.com/s/materialicons/v142/flUhRq6tzZclQEJ-Vdg-IuiaDsNa.woff) format('woff')
      }

      .material-icons {
        font-family: 'Material Icons';
        font-weight: normal;
        font-style: normal;
        font-size: 24px;
        line-height: 1;
        letter-spacing: normal;
        text-transform: none;
        display: inline-block;
        white-space: nowrap;
        word-wrap: normal;
        direction: ltr;
        font-feature-settings: 'liga'
      }

      @font-face {
        font-family: 'Material Icons';
        font-style: normal;
        font-weight: 400;
        src: url(https://fonts.gstatic.com/s/materialicons/v142/flUhRq6tzZclQEJ-Vdg-IuiaDsNcIhQ8tQ.woff2) format('woff2')
      }

      .material-icons {
        font-family: 'Material Icons';
        font-weight: normal;
        font-style: normal;
        font-size: 24px;
        line-height: 1;
        letter-spacing: normal;
        text-transform: none;
        display: inline-block;
        white-space: nowrap;
        word-wrap: normal;
        direction: ltr;
        -webkit-font-feature-settings: 'liga';
        -webkit-font-smoothing: antialiased
      }
    </style>
    <script bis_use="true" type="text/javascript" charset="utf-8" data-bis-config="[&quot;facebook.com/&quot;,&quot;twitter.com/&quot;,&quot;youtube-nocookie.com/embed/&quot;,&quot;//vk.com/&quot;,&quot;//www.vk.com/&quot;,&quot;linkedin.com/&quot;,&quot;//www.linkedin.com/&quot;,&quot;//instagram.com/&quot;,&quot;//www.instagram.com/&quot;,&quot;//www.google.com/recaptcha/api2/&quot;,&quot;//hangouts.google.com/webchat/&quot;,&quot;//www.google.com/calendar/&quot;,&quot;//www.google.com/maps/embed&quot;,&quot;spotify.com/&quot;,&quot;soundcloud.com/&quot;,&quot;//player.vimeo.com/&quot;,&quot;//disqus.com/&quot;,&quot;//tgwidget.com/&quot;,&quot;//js.driftt.com/&quot;,&quot;friends2follow.com&quot;,&quot;/widget&quot;,&quot;login&quot;,&quot;//video.bigmir.net/&quot;,&quot;blogger.com&quot;,&quot;//smartlock.google.com/&quot;,&quot;//keep.google.com/&quot;,&quot;/web.tolstoycomments.com/&quot;,&quot;moz-extension://&quot;,&quot;chrome-extension://&quot;,&quot;/auth/&quot;,&quot;//analytics.google.com/&quot;,&quot;adclarity.com&quot;,&quot;paddle.com/checkout&quot;,&quot;hcaptcha.com&quot;,&quot;recaptcha.net&quot;,&quot;2captcha.com&quot;,&quot;accounts.google.com&quot;,&quot;www.google.com/shopping/customerreviews&quot;,&quot;buy.tinypass.com&quot;,&quot;gstatic.com&quot;,&quot;secureir.ebaystatic.com&quot;,&quot;docs.google.com&quot;,&quot;contacts.google.com&quot;,&quot;github.com&quot;,&quot;mail.google.com&quot;,&quot;chat.google.com&quot;,&quot;audio.xpleer.com&quot;,&quot;keepa.com&quot;,&quot;static.xx.fbcdn.net&quot;,&quot;sas.selleramp.com&quot;,&quot;1plus1.video&quot;,&quot;console.googletagservices.com&quot;,&quot;//lnkd.demdex.net/&quot;,&quot;//radar.cedexis.com/&quot;,&quot;//li.protechts.net/&quot;,&quot;challenges.cloudflare.com/&quot;]" src="chrome-extension://eppiocemhmnlbhjplcgkofciiegomcon/executers/vi-tr.js"></script>
    <style id="_goober">
      @keyframes go2264125279 {
        from {
          transform: scale(0) rotate(45deg);
          opacity: 0;
        }

        to {
          transform: scale(1) rotate(45deg);
          opacity: 1;
        }
      }

      @keyframes go3020080000 {
        from {
          transform: scale(0);
          opacity: 0;
        }

        to {
          transform: scale(1);
          opacity: 1;
        }
      }

      @keyframes go463499852 {
        from {
          transform: scale(0) rotate(90deg);
          opacity: 0;
        }

        to {
          transform: scale(1) rotate(90deg);
          opacity: 1;
        }
      }

      @keyframes go1268368563 {
        from {
          transform: rotate(0deg);
        }

        to {
          transform: rotate(360deg);
        }
      }

      @keyframes go1310225428 {
        from {
          transform: scale(0) rotate(45deg);
          opacity: 0;
        }

        to {
          transform: scale(1) rotate(45deg);
          opacity: 1;
        }
      }

      @keyframes go651618207 {
        0% {
          height: 0;
          width: 0;
          opacity: 0;
        }

        40% {
          height: 0;
          width: 6px;
          opacity: 1;
        }

        100% {
          opacity: 1;
          height: 10px;
        }
      }

      @keyframes go901347462 {
        from {
          transform: scale(0.6);
          opacity: 0.4;
        }

        to {
          transform: scale(1);
          opacity: 1;
        }
      }

      .go4109123758 {
        z-index: 9999;
      }

      .go4109123758>* {
        pointer-events: auto;
      }
    </style>
    <style type="text/css" data-rbd-always="0">
      [data-rbd-drag-handle-context-id="0"] {
        -webkit-touch-callout: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        touch-action: manipulation;
      }

      [data-rbd-droppable-context-id="0"] {
        overflow-anchor: none;
      }
    </style>
    <style type="text/css" data-rbd-dynamic="0">
      [data-rbd-drag-handle-context-id="0"] {
        cursor: -webkit-grab;
        cursor: grab;
      }
    </style>
    <style type="text/css" data-rbd-always="1">
      [data-rbd-drag-handle-context-id="1"] {
        -webkit-touch-callout: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        touch-action: manipulation;
      }

      [data-rbd-droppable-context-id="1"] {
        overflow-anchor: none;
      }
    </style>
    <style type="text/css" data-rbd-dynamic="1">
      [data-rbd-drag-handle-context-id="1"] {
        cursor: -webkit-grab;
        cursor: grab;
      }
    </style>

  </head>
  <body>
    <div id="__next" bis_skin_checked="1">
      <div style="position:fixed;z-index:99999;top:16px;left:16px;right:16px;bottom:16px;pointer-events:none" bis_skin_checked="1"></div>
      <div class="ks_w100 ks_d_flex ks_alg_itm_strect ks_jt_cont_spc_around" bis_skin_checked="1">

        <!-- left menu -->
        <%@ include file="includes/incld_left_menu.jsp" %>

        <div class="ks_col10 ks_wht_bg_clr ks_d_flex ks_flex_col ks_h100vh" bis_skin_checked="1">
          <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_brd_btm ks_ptb12_plr25" bis_skin_checked="1">
            <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
              <div id="logo_sm_blk_id" class="ks_d_flex ks_alg_itm_ctr ks_cs_pointer" bis_skin_checked="1">
                <div class="ks_circle ks_wth32 ks_hgt32 ks_focus_act ks_ml_mn5" bis_skin_checked="1">
                  <svg class="ks_wth20 ks_hgt20" viewBox="0 0 18 10">
                    <path d="M1.23926 9.84863H16.752C17.0098 9.84863 17.2236 9.75781 17.3936 9.57617C17.5693 9.38867 17.6572 9.16602 17.6572 8.9082C17.6572 8.65625 17.5693 8.43945 17.3936 8.25781C17.2236 8.07617 17.0098 7.98535 16.752 7.98535H1.23926C0.981445 7.98535 0.764648 8.0791 0.588867 8.2666C0.413086 8.44824 0.325195 8.66211 0.325195 8.9082C0.325195 9.16016 0.413086 9.37988 0.588867 9.56738C0.764648 9.75488 0.981445 9.84863 1.23926 9.84863ZM1.23926 5.92871H16.752C17.0098 5.92871 17.2236 5.83789 17.3936 5.65625C17.5693 5.47461 17.6572 5.25781 17.6572 5.00586C17.6572 4.74805 17.5693 4.52832 17.3936 4.34668C17.2236 4.16504 17.0098 4.07422 16.752 4.07422H1.23926C0.981445 4.07422 0.764648 4.16797 0.588867 4.35547C0.413086 4.53711 0.325195 4.75391 0.325195 5.00586C0.325195 5.25195 0.413086 5.46875 0.588867 5.65625C0.764648 5.83789 0.981445 5.92871 1.23926 5.92871ZM1.23926 2.02637H16.752C17.0098 2.02637 17.2236 1.93555 17.3936 1.75391C17.5693 1.56641 17.6572 1.34668 17.6572 1.09473C17.6572 0.842773 17.5693 0.625977 17.3936 0.444336C17.2236 0.262695 17.0098 0.171875 16.752 0.171875H1.23926C0.981445 0.171875 0.764648 0.265625 0.588867 0.453125C0.413086 0.634766 0.325195 0.848633 0.325195 1.09473C0.325195 1.34082 0.413086 1.55762 0.588867 1.74512C0.764648 1.93262 0.981445 2.02637 1.23926 2.02637Z"></path>
                  </svg>
                </div>
                <svg class="ks_ml5" width="100" viewBox="0 0 167 30">

                  <defs>
                    <clippath id="clip0_2294_9506">
                      <rect width="167" height="30" fill="white"></rect>
                    </clippath>
                  </defs>
                </svg>
              </div>
            </div>
            <div class="ks_d_flex ks_alg_itm_ctr ks_gap_25" bis_skin_checked="1">
              <div data-bs-toggle="dropdown" class="ks_d_flex ks_alg_itm_ctr ks_gap_8 ks_cs_pointer" aria-expanded="false" bis_skin_checked="1">
                <div class="ks_circle ks_wth18 ks_hgt18" bis_skin_checked="1">
                  <img alt="English Flag" loading="lazy" width="16" height="16" decoding="async" data-nimg="1" class="ks_img ks_no_brd" src="/img/united-kingdom-flag-icon.svg" style="color: transparent;">
                </div>
                <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                  <label class="ks_lbl ks_fw_md ks_cs_pointer">English</label>
                  <svg class="ks_wth18 ks_hgt18 ks_d_flex ks_jt_cont_ctr ks_alg_itm_ctr ks_cs_pointer" viewBox="0 0 19 18">
                    <g clip-path="url(#clip0_22_462)">
                      <path d="M6.75803 8.72798L8.91603 10.886C8.99312 10.9632 9.0847 11.0245 9.18551 11.0663C9.28632 11.1082 9.39439 11.1297 9.50353 11.1297C9.61267 11.1297 9.72074 11.1082 9.82155 11.0663C9.92236 11.0245 10.0139 10.9632 10.091 10.886L12.249 8.72798C12.3652 8.61096 12.4442 8.4622 12.476 8.30041C12.5079 8.13862 12.4911 7.97102 12.428 7.81871C12.3648 7.66639 12.258 7.53616 12.121 7.4444C11.984 7.35263 11.8229 7.30343 11.658 7.30298H7.34103C7.17617 7.30358 7.0152 7.35308 6.8785 7.44521C6.74179 7.53735 6.6355 7.66797 6.57308 7.82055C6.51065 7.97313 6.49491 8.1408 6.52783 8.30234C6.56075 8.46387 6.64087 8.612 6.75803 8.72798Z" fill="black"></path>
                    </g>
                    <defs>
                      <clippath id="clip0_22_462">
                        <rect width="18" height="18" fill="white" transform="translate(0.5)"></rect>
                      </clippath>
                    </defs>
                  </svg>
                </div>
              </div>
              <div class="dropdown-menu dropdown-menu-end ks_dropdown ks_mt5" bis_skin_checked="1">
                <div class="ks_d_flex ks_flex_col ks_plr5" bis_skin_checked="1">
                  <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_w100 ks_drp_itm ks_ptb8_plr15 active" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_gap_10" bis_skin_checked="1">
                      <div class="ks_circle ks_wth16 ks_hgt16" bis_skin_checked="1">
                        <img alt="English Flag" loading="lazy" width="16" height="16" decoding="async" data-nimg="1" class="ks_img ks_no_brd" src="/img/united-kingdom-flag-icon.svg" style="color: transparent;">
                      </div>
                      <label class="ks_lbl ks_fw_md" role="button">English</label>
                    </div>
                    <svg width="18" height="18" class="ks_wth18 ks_hgt18 ks_d_none" viewBox="0 0 18 18">
                      <path d="M7.75586 14.7235C8.0944 14.7235 8.35465 14.5932 8.53662 14.3326L14.1733 6.05191C14.2368 5.95569 14.2834 5.86349 14.313 5.77529C14.3426 5.68709 14.3574 5.6029 14.3574 5.52272C14.3574 5.30623 14.2855 5.12983 14.1416 4.99352C13.9977 4.85722 13.8115 4.78906 13.583 4.78906C13.4222 4.78906 13.2868 4.81913 13.1768 4.87927C13.071 4.9394 12.9694 5.04163 12.8721 5.18596L7.73047 12.9134L5.08984 9.7262C4.91211 9.5057 4.69206 9.39546 4.42969 9.39546C4.19694 9.39546 4.00439 9.46561 3.85205 9.60593C3.70394 9.74625 3.62988 9.92265 3.62988 10.1351C3.62988 10.2313 3.64893 10.3256 3.68701 10.4178C3.7251 10.506 3.78646 10.5982 3.87109 10.6944L6.9751 14.3506C7.19092 14.5992 7.45117 14.7235 7.75586 14.7235Z" fill="#1f1f1f"></path>
                    </svg>
                  </div>
                  <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_w100 ks_drp_itm ks_ptb8_plr15" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_gap_10" bis_skin_checked="1">
                      <div class="ks_circle ks_wth16 ks_hgt16" bis_skin_checked="1">
                        <img alt="Cambodia Flag" loading="lazy" width="16" height="16" decoding="async" data-nimg="1" class="ks_img ks_no_brd" src="/img/cambodia-flag-icon.svg" style="color: transparent;">
                      </div>
                      <label class="ks_lbl ks_fw_md ks_kh_lbl" role="button">ភាសាខ្មែរ</label>
                    </div>
                    <svg width="18" height="18" class="ks_wth18 ks_hgt18 ks_d_none" viewBox="0 0 18 18">
                      <path d="M7.75586 14.7235C8.0944 14.7235 8.35465 14.5932 8.53662 14.3326L14.1733 6.05191C14.2368 5.95569 14.2834 5.86349 14.313 5.77529C14.3426 5.68709 14.3574 5.6029 14.3574 5.52272C14.3574 5.30623 14.2855 5.12983 14.1416 4.99352C13.9977 4.85722 13.8115 4.78906 13.583 4.78906C13.4222 4.78906 13.2868 4.81913 13.1768 4.87927C13.071 4.9394 12.9694 5.04163 12.8721 5.18596L7.73047 12.9134L5.08984 9.7262C4.91211 9.5057 4.69206 9.39546 4.42969 9.39546C4.19694 9.39546 4.00439 9.46561 3.85205 9.60593C3.70394 9.74625 3.62988 9.92265 3.62988 10.1351C3.62988 10.2313 3.64893 10.3256 3.68701 10.4178C3.7251 10.506 3.78646 10.5982 3.87109 10.6944L6.9751 14.3506C7.19092 14.5992 7.45117 14.7235 7.75586 14.7235Z" fill="#1f1f1f"></path>
                    </svg>
                  </div>
                  <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_w100 ks_drp_itm ks_ptb8_plr15 disabled" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_gap_10" bis_skin_checked="1">
                      <div class="ks_circle ks_wth16 ks_hgt16" bis_skin_checked="1">
                        <img alt="Korean Flag" loading="lazy" width="16" height="16" decoding="async" data-nimg="1" class="ks_img ks_no_brd ks_brd" src="/img/south-korean-flag-icon.svg" style="color: transparent;">
                      </div>
                      <label class="ks_lbl ks_fw_md" role="button">한국어 coming soon</label>
                    </div>
                    <svg width="18" height="18" class="ks_wth18 ks_hgt18 ks_d_none" viewBox="0 0 18 18">
                      <path d="M7.75586 14.7235C8.0944 14.7235 8.35465 14.5932 8.53662 14.3326L14.1733 6.05191C14.2368 5.95569 14.2834 5.86349 14.313 5.77529C14.3426 5.68709 14.3574 5.6029 14.3574 5.52272C14.3574 5.30623 14.2855 5.12983 14.1416 4.99352C13.9977 4.85722 13.8115 4.78906 13.583 4.78906C13.4222 4.78906 13.2868 4.81913 13.1768 4.87927C13.071 4.9394 12.9694 5.04163 12.8721 5.18596L7.73047 12.9134L5.08984 9.7262C4.91211 9.5057 4.69206 9.39546 4.42969 9.39546C4.19694 9.39546 4.00439 9.46561 3.85205 9.60593C3.70394 9.74625 3.62988 9.92265 3.62988 10.1351C3.62988 10.2313 3.64893 10.3256 3.68701 10.4178C3.7251 10.506 3.78646 10.5982 3.87109 10.6944L6.9751 14.3506C7.19092 14.5992 7.45117 14.7235 7.75586 14.7235Z" fill="#1f1f1f"></path>
                    </svg>
                  </div>
                  <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_w100 ks_drp_itm ks_ptb8_plr15 disabled" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_gap_10" bis_skin_checked="1">
                      <div class="ks_circle ks_wth16 ks_hgt16" bis_skin_checked="1">
                        <img alt="chinese Flag" loading="lazy" width="16" height="16" decoding="async" data-nimg="1" class="ks_img ks_no_brd" src="/img/china-flag-icon.svg" style="color: transparent;">
                      </div>
                      <label class="ks_lbl ks_fw_md" role="button">中文 coming soon</label>
                    </div>
                    <svg width="18" height="18" class="ks_wth18 ks_hgt18 ks_d_none" viewBox="0 0 18 18">
                      <path d="M7.75586 14.7235C8.0944 14.7235 8.35465 14.5932 8.53662 14.3326L14.1733 6.05191C14.2368 5.95569 14.2834 5.86349 14.313 5.77529C14.3426 5.68709 14.3574 5.6029 14.3574 5.52272C14.3574 5.30623 14.2855 5.12983 14.1416 4.99352C13.9977 4.85722 13.8115 4.78906 13.583 4.78906C13.4222 4.78906 13.2868 4.81913 13.1768 4.87927C13.071 4.9394 12.9694 5.04163 12.8721 5.18596L7.73047 12.9134L5.08984 9.7262C4.91211 9.5057 4.69206 9.39546 4.42969 9.39546C4.19694 9.39546 4.00439 9.46561 3.85205 9.60593C3.70394 9.74625 3.62988 9.92265 3.62988 10.1351C3.62988 10.2313 3.64893 10.3256 3.68701 10.4178C3.7251 10.506 3.78646 10.5982 3.87109 10.6944L6.9751 14.3506C7.19092 14.5992 7.45117 14.7235 7.75586 14.7235Z" fill="#1f1f1f"></path>
                    </svg>
                  </div>
                </div>
              </div>
              <div class="ks_pos_rlt" data-bs-toggle="dropdown" bis_skin_checked="1">
                <svg class="ks_wth28 ks_hgt28 ks_cs_pointer" viewBox="0 0 24 24">
                  <path d="M4.64307 18.3516C3.76172 18.3516 3.24219 17.9062 3.24219 17.229C3.24219 16.3013 4.1792 15.4663 4.98633 14.6406C5.59863 14.0005 5.76562 12.6831 5.83984 11.6162C5.90479 8.05371 6.85107 5.60449 9.31885 4.71387C9.66211 3.49854 10.627 2.54297 11.9907 2.54297C13.3638 2.54297 14.3193 3.49854 14.6719 4.71387C17.1396 5.60449 18.0859 8.05371 18.1509 11.6162C18.2251 12.6831 18.3921 14.0005 19.0044 14.6406C19.8022 15.4663 20.7485 16.3013 20.7485 17.229C20.7485 17.9062 20.2197 18.3516 19.3477 18.3516H4.64307ZM11.9907 22.0718C10.4229 22.0718 9.27246 20.9214 9.15186 19.6226H14.8389C14.7183 20.9214 13.5679 22.0718 11.9907 22.0718Z" fill="#90929A"></path>
                </svg>
              </div>
              <div class="dropdown-menu ks_dropdown dropdown-menu-end ks_mt5" bis_skin_checked="1">
                <div class="ks_wth380" bis_skin_checked="1">
                  <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_ptb12_plr25" bis_skin_checked="1">
                    <label class="ks_lbl ks_fs16 ks_fw_semi_bd">Notifications</label>
                    <div class="ks_d_flex ks_alg_itm_ctr ks_cs_pointer ks_read_all_stat  false" bis_skin_checked="1">
                      <svg class="ks_wth18 ks_hgt18 ks_sec_fill_clr" viewBox="0 0 18 18">
                        <path d="M2.15947 14.9818C2.05316 14.7904 2 14.4771 2 14.042V7.86107C2 7.62611 2.01772 7.42378 2.05316 7.25408C2.09302 7.08438 2.15947 6.93209 2.25249 6.7972C2.34551 6.65796 2.47841 6.51873 2.65116 6.37949L7.6412 2.60047C7.89369 2.41336 8.12182 2.2676 8.32558 2.16317C8.52935 2.05439 8.75526 2 9.00332 2C9.24253 2 9.46401 2.05439 9.66777 2.16317C9.87597 2.2676 10.1041 2.41336 10.3522 2.60047L15.3422 6.37949C15.5194 6.52308 15.6545 6.66232 15.7475 6.7972C15.8405 6.93209 15.9048 7.08438 15.9402 7.25408C15.9801 7.42378 16 7.62611 16 7.86107V14.042C16 14.4771 15.9468 14.786 15.8405 14.9688L11.7608 11.02L15.1163 7.78275C15.2625 7.64351 15.2625 7.52168 15.1163 7.41725L9.74751 3.3641C9.58361 3.23792 9.4485 3.14654 9.34219 3.08998C9.24031 3.03341 9.12735 3.00513 9.00332 3.00513C8.87486 3.00513 8.75747 3.03559 8.65116 3.0965C8.54485 3.15307 8.41196 3.24227 8.25249 3.3641L2.88372 7.41725C2.74197 7.52168 2.73976 7.64351 2.87708 7.78275L6.25249 11.02L2.15947 14.9818ZM3.85382 16C3.3134 16 2.93688 15.8999 2.72425 15.6998L8.22591 10.3478C8.49169 10.0867 8.75305 9.95618 9.00997 9.95618C9.26246 9.95618 9.52381 10.0867 9.79402 10.3478L15.2691 15.6737C15.0299 15.8912 14.6002 16 13.9801 16H3.85382Z"></path>
                      </svg>
                      <label class="ks_lbl ks_fs14 ks_fw_md ks_sec_link_clr ks_ml5">Read all</label>
                    </div>
                  </div>
                  <div class="ks_w100 ks_brd_btm ks_mt8" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_plr25" bis_skin_checked="1">
                      <div class="ks_tab_itm ks_notify ks_d_flex ks_alg_itm_ctr ks_pb8 ks_pos_rlt cur_act" bis_skin_checked="1">
                        <label class="ks_lbl ks_fs14 ks_fw_md">Apartment</label>
                        <div class="ks_tab_itm_line ks_w100 ks_pos_abs" bis_skin_checked="1"></div>
                      </div>
                      <div class="ks_tab_itm ks_notify ks_d_flex ks_alg_itm_ctr ks_pb8 ks_pos_rlt ks_ml20 false" bis_skin_checked="1">
                        <label class="ks_lbl ks_fs14 ks_fw_md ks_sec_clr">Condo</label>
                      </div>
                    </div>
                  </div>
                  <div class="ks_d_flex ks_flex_col ks_w100 ks_hgt400 ks_scrollable ks_mt5" bis_skin_checked="1">
                    <div id="noti_read_all_data_blk_id " class=" d-flex flex-column justify-content-center align-items-center" bis_skin_checked="1">

                      <span class="ks_lbl ks_fs12 ks_fw_md ks_sec_clr ks_mt_mn25">There is no content to display</span>
                    </div>
                    <div bis_skin_checked="1"></div>
                  </div>
                </div>
              </div>
              <div class="ks_wth36 ks_hgt36 ks_cs_pointer" data-bs-toggle="dropdown" bis_skin_checked="1">
                <img alt="" fetchpriority="high" width="36" height="36" decoding="async" data-nimg="1" class="ks_img " src="/img/avatar.2eb62363.svg" style="color: transparent;">
              </div>
              <div class="dropdown-menu ks_dropdown dropdown-menu-end ks_mt5" bis_skin_checked="1">
                <div class="ks_d_flex ks_flex_col ks_wth280" bis_skin_checked="1">
                  <div class="ks_d_flex ks_flex_col ks_p10" bis_skin_checked="1">
                    <div class="ks_d_flex ks_flex_row ks_alg_itm_ctr ks_p10" bis_skin_checked="1">
                      <div class="ks_wth45 ks_hgt45" bis_skin_checked="1">
                        <img alt="" loading="lazy" width="40" height="38" decoding="async" data-nimg="1" class="ks_img profile_user" src="/img/avatar.2eb62363.svg" style="color: transparent;">
                      </div>
                      <div class="ks_d_flex ks_flex_col ks_ml10" bis_skin_checked="1">
                        <label class="ks_lbl ks_fs16 ks_fw_md"> </label>
                        <label class="ks_lbl ks_fs12 ks_fw_md ks_sec_clr ks_mt2">093 201 410</label>
                      </div>
                    </div>
                    <div class="ks_d_flex ks_alg_itm_ctr ks_mt15 ks_plan_blk" bis_skin_checked="1">
                      <svg class="ks_wth30 ks_hgt32" viewBox="0 0 24 26">
                        <path d="M1.74805 22.2412V14.6875H10.6348V25.3516H4.97266C3.95703 25.3516 3.16569 25.085 2.59863 24.5518C2.03158 24.027 1.74805 23.2568 1.74805 22.2412ZM12.7549 25.3516V14.6875H21.6416V22.2412C21.6416 23.2568 21.3538 24.027 20.7783 24.5518C20.2113 25.085 19.4242 25.3516 18.417 25.3516H12.7549ZM0.0595703 11.4502V8.65723C0.0595703 7.96322 0.254232 7.45964 0.643555 7.14648C1.03288 6.83333 1.56185 6.67676 2.23047 6.67676H4.80762C4.46061 6.34668 4.18555 5.95736 3.98242 5.50879C3.78776 5.06022 3.69043 4.56934 3.69043 4.03613C3.69043 3.25749 3.87663 2.56348 4.24902 1.9541C4.62988 1.34473 5.14193 0.870768 5.78516 0.532227C6.42839 0.185221 7.13932 0.0117188 7.91797 0.0117188C8.78125 0.0117188 9.55143 0.240234 10.2285 0.697266C10.9056 1.1543 11.3965 1.80599 11.7012 2.65234C11.9974 1.80599 12.4798 1.1543 13.1484 0.697266C13.8255 0.240234 14.5999 0.0117188 15.4717 0.0117188C16.2588 0.0117188 16.9697 0.185221 17.6045 0.532227C18.2477 0.870768 18.7555 1.34473 19.1279 1.9541C19.5088 2.56348 19.6992 3.25749 19.6992 4.03613C19.6992 4.56934 19.5977 5.06022 19.3945 5.50879C19.1999 5.95736 18.929 6.34668 18.582 6.67676H21.1592C21.8532 6.67676 22.3864 6.83333 22.7588 7.14648C23.1396 7.45964 23.3301 7.96322 23.3301 8.65723V11.4502C23.3301 12.1104 23.1523 12.5885 22.7969 12.8848C22.4414 13.1725 21.9336 13.3164 21.2734 13.3164H12.7549V6.67676H14.5957C15.5267 6.67676 16.2503 6.43132 16.7666 5.94043C17.2829 5.44954 17.541 4.87402 17.541 4.21387C17.541 3.56217 17.3337 3.05436 16.9189 2.69043C16.5042 2.31803 15.9668 2.13184 15.3066 2.13184C14.6042 2.13184 14.0033 2.38997 13.5039 2.90625C13.0046 3.41406 12.7549 4.09961 12.7549 4.96289V6.67676H10.6348V4.96289C10.6348 4.09961 10.3851 3.41406 9.88574 2.90625C9.38639 2.38997 8.78548 2.13184 8.08301 2.13184C7.42285 2.13184 6.88542 2.31803 6.4707 2.69043C6.05599 3.05436 5.84863 3.56217 5.84863 4.21387C5.84863 4.87402 6.10677 5.44954 6.62305 5.94043C7.13932 6.43132 7.86296 6.67676 8.79395 6.67676H10.6348V13.3164H2.11621C1.46452 13.3164 0.956706 13.1725 0.592773 12.8848C0.237305 12.5885 0.0595703 12.1104 0.0595703 11.4502Z" fill="#FF6700"></path>
                      </svg>
                      <div class="ks_d_flex ks_flex_col ks_ml15" bis_skin_checked="1">
                        <label class="ks_lbl ks_fw_md ks_basic_plan_clr">Free for 30 days</label>
                        <label class="ks_lbl ks_fs12 ks_sec_clr">1 day left</label>
                      </div>
                    </div>
                  </div>
                  <div class="ks_d_flex ks_alg_itm_ctr ks_ptb15_plr20 ks_drp_itm ks_brd_top c_pointer" bis_skin_checked="1">
                    <svg class="ks_wth20 ks_hgt20 ks_sec_fill_clr ks_mr10" viewBox="0 0 18 18">
                      <path d="M9 15.1394C9.07298 15.1394 9.14382 15.1351 9.21251 15.1264C9.2855 15.122 9.36063 15.1176 9.4379 15.1133L9.77277 15.7668C9.8157 15.8495 9.8758 15.9105 9.95308 15.9497C10.0304 15.9933 10.1184 16.0085 10.2171 15.9955C10.3073 15.9781 10.3824 15.9345 10.4425 15.8648C10.5026 15.7994 10.5391 15.721 10.552 15.6295L10.655 14.8976C10.7967 14.8628 10.9341 14.8192 11.0672 14.7669C11.2045 14.7147 11.3398 14.6602 11.4729 14.6036L12.0009 15.0806C12.0696 15.146 12.1469 15.1852 12.2328 15.1982C12.3229 15.2113 12.4131 15.1939 12.5032 15.146C12.6749 15.0414 12.7393 14.8867 12.6964 14.682L12.5419 13.9632C12.6578 13.8804 12.7715 13.7933 12.8832 13.7018C12.9991 13.6103 13.1086 13.5101 13.2116 13.4012L13.8749 13.6822C13.9607 13.7214 14.0466 13.7301 14.1325 13.7083C14.2183 13.6865 14.2935 13.6364 14.3579 13.558C14.418 13.4839 14.4523 13.4033 14.4609 13.3162C14.4695 13.2291 14.448 13.1441 14.3965 13.0614L14.0101 12.4406C14.0917 12.3186 14.1668 12.1944 14.2355 12.0681C14.3085 11.9417 14.3772 11.811 14.4416 11.676L15.1628 11.7087C15.2573 11.7174 15.341 11.6956 15.414 11.6433C15.4913 11.591 15.5449 11.5192 15.575 11.4277C15.605 11.3362 15.6072 11.2491 15.5814 11.1663C15.5557 11.0791 15.5041 11.0051 15.4269 10.9441L14.8666 10.4867C14.901 10.3516 14.931 10.2122 14.9568 10.0684C14.9868 9.92031 15.0083 9.77219 15.0212 9.62407L15.6973 9.40189C15.8991 9.33654 16 9.20149 16 8.99673C16 8.79198 15.8991 8.65692 15.6973 8.59158L15.0212 8.36939C15.0083 8.22127 14.9868 8.07533 14.9568 7.93156C14.931 7.7878 14.901 7.64403 14.8666 7.50027L15.4269 7.04284C15.5041 6.9862 15.5557 6.9165 15.5814 6.83372C15.6072 6.75095 15.605 6.66382 15.575 6.57233C15.5449 6.48084 15.4913 6.41114 15.414 6.36322C15.341 6.31094 15.2573 6.28698 15.1628 6.29134L14.4416 6.31748C14.3772 6.18242 14.3085 6.05173 14.2355 5.92539C14.1668 5.79905 14.0917 5.67489 14.0101 5.55291L14.3965 4.9321C14.4437 4.85369 14.463 4.77091 14.4545 4.68378C14.4502 4.59665 14.418 4.51606 14.3579 4.442C14.2935 4.36358 14.2183 4.31566 14.1325 4.29823C14.0466 4.27645 13.9586 4.28298 13.8684 4.31783L13.2116 4.58576C13.1086 4.48556 12.9991 4.38972 12.8832 4.29823C12.7715 4.20239 12.6578 4.1109 12.5419 4.02377L12.6964 3.31801C12.7393 3.10454 12.6728 2.94989 12.4968 2.85404C12.4109 2.80612 12.3229 2.78652 12.2328 2.79523C12.1469 2.80394 12.0696 2.84315 12.0009 2.91286L11.4729 3.39643C11.3398 3.33544 11.2045 3.28098 11.0672 3.23306C10.9298 3.18078 10.7924 3.13504 10.655 3.09583L10.552 2.37047C10.5391 2.27898 10.5026 2.20057 10.4425 2.13522C10.3824 2.06552 10.3051 2.02195 10.2107 2.00452C10.1162 1.99145 10.0282 2.0067 9.94664 2.05027C9.86937 2.08948 9.81141 2.14829 9.77277 2.22671L9.4379 2.88018C9.36063 2.87583 9.2855 2.87147 9.21251 2.86711C9.14382 2.86276 9.07298 2.86058 9 2.86058C8.92272 2.86058 8.84974 2.86276 8.78105 2.86711C8.71236 2.87147 8.63937 2.87583 8.5621 2.88018L8.22723 2.22671C8.1843 2.14829 8.1242 2.08948 8.04692 2.05027C7.96964 2.0067 7.88163 1.99145 7.78289 2.00452C7.69273 2.02195 7.61546 2.06552 7.55106 2.13522C7.49095 2.20057 7.45446 2.27898 7.44158 2.37047L7.34499 3.09583C7.20331 3.13504 7.06378 3.17861 6.9264 3.22653C6.78902 3.27445 6.65379 3.33108 6.5207 3.39643L5.99908 2.91939C5.93039 2.84533 5.85097 2.80394 5.76081 2.79523C5.67065 2.78652 5.58264 2.80612 5.49678 2.85404C5.41521 2.89761 5.35725 2.96078 5.32291 3.04355C5.28856 3.12633 5.28212 3.21781 5.30359 3.31801L5.4517 4.02377C5.34008 4.1109 5.22631 4.20239 5.1104 4.29823C4.99448 4.38972 4.885 4.48556 4.78197 4.58576L4.12512 4.31783C4.03496 4.28298 3.94695 4.27645 3.86109 4.29823C3.77522 4.31566 3.70009 4.36358 3.63569 4.442C3.57559 4.51606 3.54125 4.59665 3.53266 4.68378C3.52837 4.77091 3.54983 4.85369 3.59706 4.9321L3.98344 5.55291C3.90187 5.67489 3.82459 5.79905 3.75161 5.92539C3.68292 6.05173 3.61852 6.18242 3.55842 6.31748L2.83073 6.29134C2.74057 6.28698 2.65685 6.31094 2.57958 6.36322C2.50659 6.41114 2.45508 6.48084 2.42502 6.57233C2.39068 6.66382 2.38638 6.75095 2.41214 6.83372C2.4422 6.9165 2.49371 6.9862 2.5667 7.04284L3.12695 7.50027C3.09261 7.64403 3.06256 7.7878 3.0368 7.93156C3.01104 8.07533 2.99172 8.22127 2.97884 8.36939L2.29623 8.59158C2.09874 8.65692 2 8.79198 2 8.99673C2 9.20149 2.09874 9.33654 2.29623 9.40189L2.97884 9.62407C2.99172 9.77219 3.01104 9.92031 3.0368 10.0684C3.06256 10.2122 3.09261 10.3516 3.12695 10.4867L2.5667 10.9441C2.49371 11.0051 2.44434 11.0791 2.41858 11.1663C2.39282 11.2491 2.39497 11.3362 2.42502 11.4277C2.45508 11.5192 2.50659 11.591 2.57958 11.6433C2.65685 11.6956 2.74057 11.7174 2.83073 11.7087L3.55842 11.676C3.61852 11.811 3.68292 11.9417 3.75161 12.0681C3.82459 12.1944 3.90187 12.3186 3.98344 12.4406L3.59706 13.0614C3.54983 13.1441 3.52837 13.2291 3.53266 13.3162C3.54125 13.4033 3.57559 13.4839 3.63569 13.558C3.70009 13.6364 3.77522 13.6865 3.86109 13.7083C3.94695 13.7301 4.03496 13.7214 4.12512 13.6822L4.78197 13.4012C4.885 13.5101 4.99448 13.6103 5.1104 13.7018C5.22631 13.7933 5.34008 13.8804 5.4517 13.9632L5.30359 14.682C5.28642 14.7778 5.29285 14.8671 5.32291 14.9499C5.35725 15.0327 5.41521 15.098 5.49678 15.146C5.58694 15.1939 5.67495 15.2113 5.76081 15.1982C5.84667 15.1895 5.9261 15.1525 5.99908 15.0871L6.5207 14.6036C6.65379 14.6602 6.78688 14.7147 6.91996 14.7669C7.05734 14.8192 7.19902 14.8628 7.34499 14.8976L7.44158 15.6295C7.45446 15.721 7.49095 15.7994 7.55106 15.8648C7.61546 15.9345 7.69273 15.9781 7.78289 15.9955C7.88163 16.0085 7.96964 15.9933 8.04692 15.9497C8.1242 15.9105 8.1843 15.8495 8.22723 15.7668L8.5621 15.1133C8.63508 15.1176 8.70592 15.122 8.77461 15.1264C8.84759 15.1351 8.92272 15.1394 9 15.1394ZM9 13.937C8.32597 13.937 7.69703 13.8085 7.11316 13.5515C6.52929 13.2988 6.01625 12.9481 5.57406 12.4994C5.13615 12.0463 4.79485 11.5213 4.55014 10.9245C4.30543 10.3276 4.18307 9.68724 4.18307 9.00327C4.18307 8.31494 4.30543 7.67235 4.55014 7.07551C4.79485 6.47867 5.13615 5.95371 5.57406 5.50063C6.01625 5.04755 6.52929 4.69467 7.11316 4.442C7.69703 4.18932 8.32597 4.06298 9 4.06298C9.67832 4.06298 10.3094 4.18932 10.8933 4.442C11.4772 4.69467 11.988 5.04755 12.4259 5.50063C12.8638 5.95371 13.2052 6.47867 13.4499 7.07551C13.6946 7.67235 13.8169 8.31494 13.8169 9.00327C13.8169 9.68724 13.6946 10.3276 13.4499 10.9245C13.2052 11.5213 12.8638 12.0463 12.4259 12.4994C11.988 12.9481 11.4772 13.2988 10.8933 13.5515C10.3094 13.8085 9.67832 13.937 9 13.937ZM7.78933 7.9381L8.64581 7.38918L6.67525 3.95189L5.77369 4.43546L7.78933 7.9381ZM10.5198 9.50645H14.4673L14.4609 8.47395H10.5262L10.5198 9.50645ZM8.64581 10.6108L7.78933 10.0488L5.70285 13.5253L6.59798 14.0285L8.64581 10.6108ZM8.98712 10.7742C9.30911 10.7742 9.60104 10.6958 9.86293 10.5389C10.1291 10.3777 10.3395 10.1643 10.494 9.89853C10.6529 9.62843 10.7323 9.33001 10.7323 9.00327C10.7323 8.67653 10.6529 8.38029 10.494 8.11454C10.3395 7.84879 10.1291 7.6375 9.86293 7.48067C9.60104 7.31947 9.30911 7.23888 8.98712 7.23888C8.66943 7.23888 8.37749 7.31947 8.11132 7.48067C7.84514 7.6375 7.63263 7.84879 7.47378 8.11454C7.31923 8.38029 7.24195 8.67653 7.24195 9.00327C7.24195 9.33001 7.31923 9.62843 7.47378 9.89853C7.63263 10.1643 7.84514 10.3777 8.11132 10.5389C8.37749 10.6958 8.66943 10.7742 8.98712 10.7742ZM8.98712 9.74823C8.78105 9.74823 8.60718 9.67635 8.4655 9.53258C8.32812 9.38882 8.25943 9.21238 8.25943 9.00327C8.25943 8.79415 8.32812 8.61772 8.4655 8.47395C8.60718 8.33019 8.78105 8.2583 8.98712 8.2583C9.19319 8.2583 9.36707 8.33019 9.50874 8.47395C9.65471 8.61772 9.72769 8.79415 9.72769 9.00327C9.72769 9.21238 9.65471 9.38882 9.50874 9.53258C9.36707 9.67635 9.19319 9.74823 8.98712 9.74823Z"></path>
                    </svg>
                    <label class="ks_lbl ks_fw_md">Settings</label>
                  </div>
                  <div class="ks_d_flex ks_alg_itm_ctr ks_ptb15_plr20 ks_drp_itm ks_brd_top c_pointer" bis_skin_checked="1">
                    <svg class="ks_wth16 ks_hgt16 ks_sec_fill_clr ks_mr15" viewBox="0 0 18 18">
                      <path d="M4.44285 12.043H13.5649C14.3637 12.043 14.9693 11.8461 15.3816 11.4523C15.7939 11.0536 16 10.4704 16 9.7028V3.34019C16 2.57757 15.7939 1.99688 15.3816 1.59813C14.9693 1.19938 14.3637 1 13.5649 1H4.44285C3.63887 1 3.03074 1.19938 2.61844 1.59813C2.20615 1.99688 2 2.57757 2 3.34019V9.7028C2 10.4704 2.20615 11.0536 2.61844 11.4523C3.03074 11.8461 3.63887 12.043 4.44285 12.043ZM4.55881 10.5551C4.23412 10.5551 3.98417 10.4729 3.80895 10.3084C3.63887 10.1439 3.55384 9.8947 3.55384 9.56075V3.48972C3.55384 3.16075 3.63887 2.91402 3.80895 2.74953C3.98417 2.58006 4.23412 2.49533 4.55881 2.49533H13.4412C13.771 2.49533 14.021 2.58006 14.1911 2.74953C14.3663 2.91402 14.4539 3.16075 14.4539 3.48972V9.56075C14.4539 9.8947 14.3663 10.1439 14.1911 10.3084C14.021 10.4729 13.771 10.5551 13.4412 10.5551H4.55881ZM8.254 15.3402H9.76146V10.9813H8.254V15.3402ZM2.75759 15.9533H15.2501C15.4614 15.9533 15.6392 15.881 15.7835 15.7364C15.9278 15.5919 16 15.4199 16 15.2206C16 15.0162 15.9278 14.8417 15.7835 14.6972C15.6392 14.5526 15.4614 14.4804 15.2501 14.4804H2.75759C2.55144 14.4804 2.37364 14.5526 2.22419 14.6972C2.07473 14.8417 2 15.0162 2 15.2206C2 15.4199 2.07473 15.5919 2.22419 15.7364C2.37364 15.881 2.55144 15.9533 2.75759 15.9533ZM9.00387 17C9.33885 17 9.64292 16.9202 9.91607 16.7607C10.1944 16.6012 10.416 16.3869 10.5809 16.1178C10.751 15.8486 10.836 15.552 10.836 15.228C10.836 14.904 10.751 14.6075 10.5809 14.3383C10.416 14.0692 10.1944 13.8548 9.91607 13.6953C9.64292 13.5358 9.33885 13.4561 9.00387 13.4561C8.66888 13.4561 8.36223 13.5358 8.08393 13.6953C7.81079 13.8548 7.58918 14.0692 7.41911 14.3383C7.25419 14.6075 7.17173 14.904 7.17173 15.228C7.17173 15.552 7.25419 15.8486 7.41911 16.1178C7.58918 16.3869 7.81079 16.6012 8.08393 16.7607C8.36223 16.9202 8.66888 17 9.00387 17Z"></path>
                    </svg>
                    <label role="button" class="ks_lbl ks_fw_md" style="color: red;">Log Out</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="ks_plr30 ks_mt25" bis_skin_checked="1">
            <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr" bis_skin_checked="1">
              <label class="ks_w100 ks_lbl ks_fs22 ks_fw_bd">Categories</label>
            </div>
            <div class="ks_mt20 ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr" bis_skin_checked="1">
              <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                <div class="ks_div_blk ks_focus ks_pos_rlt ks_mr10 p_acct_min_with_selected" bis_skin_checked="1">
                  <div data-bs-toggle="dropdown" class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_ptb9_plr12" bis_skin_checked="1">
                    <label class="ks_lbl ks_fw_md cursor-pointer">
                      <span>
                        <div class="ks_d_flex ks_alg_itm_start" bis_skin_checked="1">

                          <div class="d-flex flex-column ks_ml12" bis_skin_checked="1">
                            <small class="ks_lbl ks_fw_md fs_12 ks_wht_spa_nowrap">
                              <span class="fs_12 mr-1">All</span>
                             </small>
                          </div>
                        </div>
                      </span>
                    </label>
                    <svg class="ks_wth12 ks_hgt12 margin_left_10px" viewBox="0 0 13 8">
                      <path fill="#333333" d="M6.88019 7.49701C7.00873 7.49701 7.13013 7.47321 7.24438 7.4256C7.35864 7.37323 7.46338 7.29468 7.55859 7.18994L12.6716 1.96979C12.8383 1.80316 12.9216 1.60321 12.9216 1.36993C12.9216 1.20807 12.8811 1.06287 12.8002 0.934326C12.724 0.801025 12.6216 0.696289 12.4931 0.620117C12.3646 0.543945 12.2194 0.505859 12.0575 0.505859C11.8242 0.505859 11.6171 0.593933 11.4362 0.770081L6.56598 5.76886H7.20154L2.32416 0.770081C2.14801 0.593933 1.94092 0.505859 1.70288 0.505859C1.54102 0.505859 1.39581 0.543945 1.26727 0.620117C1.13873 0.696289 1.03638 0.801025 0.960205 0.934326C0.884033 1.06287 0.845947 1.20807 0.845947 1.36993C0.845947 1.48895 0.867371 1.59845 0.910217 1.69843C0.953064 1.79364 1.01495 1.88409 1.09589 1.96979L6.20178 7.19708C6.40649 7.39703 6.63263 7.49701 6.88019 7.49701Z"></path>
                    </svg>
                  </div>
                  <div class="dropdown-menu ks_dropdown ks_mt5 p_acct_min_with" bis_skin_checked="1">
                    <div class="ks_d_flex ks_flex_col ks_plr8 ks_max_hgt250 ks_scrollable" bis_skin_checked="1">
                      <div class="ks_drp_itm ks_d_flex ks_alg_itm_ctr ks_ptb8_plr15 ks_hgt55" bis_skin_checked="1">
                        <div class="d-flex flex-column ks_ml12" bis_skin_checked="1">
                          <small class="ks_lbl ks_fw_md fs_12 ks_wht_spa_nowrap">
                            <span class="fs_12 mr-1">All</span> </small>
                        </div>
                      </div>
                      <div class="ks_drp_itm ks_d_flex ks_alg_itm_start ks_ptb8_plr15" bis_skin_checked="1">
                        <div class="d-flex flex-column ks_ml12" bis_skin_checked="1">
                          <small class="ks_lbl ks_fw_md fs_12 ks_wht_spa_nowrap">
                            <span class="fs_12 mr-1"></span>114-02-102349-0 (USD) </small>
                          <small class="ks_lbl lbl_sale_price"></small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <form class="ks_d_flex ks_flex_col ks_pos_rlt ks_mr10">
                  <input class="ks_inp ks_search_inp" maxlength="256" name="parent_account_no" placeholder="Search..." id="search-2" value="" style="padding-right: 38px;">
                  <svg class="ks_svg_search_inp" viewBox="0 0 24 24">
                    <path d="M5.12988 10.7524C5.12988 11.5386 5.27637 12.2759 5.56934 12.9644C5.8623 13.6528 6.27002 14.2583 6.79248 14.7808C7.31494 15.3032 7.91797 15.7109 8.60156 16.0039C9.29004 16.2969 10.0273 16.4434 10.8135 16.4434C11.3848 16.4434 11.9268 16.3628 12.4395 16.2017C12.9521 16.0405 13.4282 15.8159 13.8677 15.5278L16.9585 18.6187C17.0659 18.7261 17.188 18.8042 17.3247 18.853C17.4663 18.9067 17.6104 18.9336 17.7568 18.9336C17.9717 18.9336 18.1621 18.8823 18.3281 18.7798C18.4941 18.6821 18.626 18.5479 18.7236 18.377C18.8213 18.2109 18.8701 18.0229 18.8701 17.813C18.8701 17.6665 18.8433 17.5249 18.7896 17.3882C18.7358 17.2515 18.6577 17.1294 18.5552 17.022L15.4937 13.9531C15.811 13.499 16.0576 13.001 16.2334 12.459C16.4141 11.917 16.5044 11.3481 16.5044 10.7524C16.5044 9.97119 16.3555 9.23633 16.0576 8.54785C15.7646 7.85938 15.3569 7.25635 14.8345 6.73877C14.3169 6.21631 13.7139 5.80615 13.0254 5.5083C12.3369 5.21045 11.5996 5.06152 10.8135 5.06152C10.0273 5.06152 9.29004 5.21045 8.60156 5.5083C7.91797 5.80615 7.31494 6.21631 6.79248 6.73877C6.27002 7.25635 5.8623 7.85938 5.56934 8.54785C5.27637 9.23633 5.12988 9.97119 5.12988 10.7524ZM6.71924 10.7524C6.71924 10.186 6.82422 9.65625 7.03418 9.16309C7.24902 8.66992 7.54443 8.23535 7.92041 7.85938C8.29639 7.4834 8.73096 7.19043 9.22412 6.98047C9.71729 6.77051 10.2471 6.66553 10.8135 6.66553C11.3799 6.66553 11.9097 6.77051 12.4028 6.98047C12.896 7.19043 13.3306 7.4834 13.7065 7.85938C14.0825 8.23535 14.3755 8.66992 14.5854 9.16309C14.8003 9.65625 14.9077 10.186 14.9077 10.7524C14.9077 11.3188 14.8003 11.8511 14.5854 12.3491C14.3755 12.8423 14.0825 13.2769 13.7065 13.6528C13.3306 14.0239 12.896 14.3169 12.4028 14.5317C11.9097 14.7417 11.3799 14.8467 10.8135 14.8467C10.2471 14.8467 9.71729 14.7417 9.22412 14.5317C8.73096 14.3169 8.29639 14.0239 7.92041 13.6528C7.54443 13.2769 7.24902 12.8423 7.03418 12.3491C6.82422 11.8511 6.71924 11.3188 6.71924 10.7524Z"></path>
                  </svg>
                  <svg class="ks_svg_clear_inp ks_cs_pointer" viewBox="0 0 24 24" style="position: absolute; right: 38px; cursor: pointer; visibility: hidden;">
                    <path d="M12.0007 10.5865L16.9504 5.63672L18.3646 7.05093L13.4149 12.0007L18.3646 16.9504L16.9504 18.3646L12.0007 13.4149L7.05093 18.3646L5.63672 16.9504L10.5865 12.0007L5.63672 7.05093L7.05093 5.63672L12.0007 10.5865Z"></path>
                  </svg>
                </form>
              </div>
              <div class="d-flex align-items-center ks_gap_12" bis_skin_checked="1">
                <div bis_skin_checked="1">
                  <div class="ks_btn ks_btn_outline" data-bs-toggle="modal" data-bs-target="#idd966-modal" bis_skin_checked="1">
                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M6.64395 6.70204L14.3356 6.70204C14.4954 6.70204 14.6293 6.64609 14.7372 6.53418C14.8491 6.42227 14.9051 6.28639 14.9051 6.12652C14.9051 5.96665 14.8491 5.83276 14.7372 5.72485C14.6293 5.61295 14.4954 5.55699 14.3356 5.55699L6.64395 5.55699C6.48409 5.55699 6.3482 5.61295 6.23629 5.72485C6.12838 5.83276 6.07443 5.96665 6.07443 6.12652C6.07443 6.28639 6.12838 6.42227 6.23629 6.53418C6.3482 6.64609 6.48409 6.70204 6.64395 6.70204ZM6.64395 10.2031L14.3356 10.2031C14.4954 10.2031 14.6293 10.1492 14.7372 10.0413C14.8491 9.92935 14.9051 9.79347 14.9051 9.6336C14.9051 9.47373 14.8491 9.33984 14.7372 9.23193C14.6293 9.12003 14.4954 9.06407 14.3356 9.06407L6.64395 9.06407C6.48409 9.06407 6.3482 9.12003 6.23629 9.23193C6.12838 9.33984 6.07443 9.47373 6.07443 9.6336C6.07443 9.79347 6.12838 9.92935 6.23629 10.0413C6.3482 10.1492 6.48409 10.2031 6.64395 10.2031ZM6.64395 13.7102L14.3356 13.7102C14.4954 13.7102 14.6293 13.6563 14.7372 13.5483C14.8491 13.4364 14.9051 13.3005 14.9051 13.1407C14.9051 12.9808 14.8491 12.8449 14.7372 12.733C14.6293 12.6211 14.4954 12.5652 14.3356 12.5652L6.64395 12.5652C6.48409 12.5652 6.3482 12.6211 6.23629 12.733C6.12838 12.8449 6.07443 12.9808 6.07443 13.1407C6.07443 13.3005 6.12838 13.4364 6.23629 13.5483C6.3482 13.6563 6.48409 13.7102 6.64395 13.7102ZM3.92822 6.95983C4.16002 6.95983 4.35586 6.87989 4.51573 6.72003C4.67959 6.55616 4.76152 6.35833 4.76152 6.12652C4.76152 5.89871 4.67959 5.70287 4.51573 5.53901C4.35586 5.37514 4.16002 5.29321 3.92822 5.29321C3.70041 5.29321 3.50457 5.37514 3.34071 5.53901C3.17684 5.70287 3.09491 5.89871 3.09491 6.12652C3.09491 6.35833 3.17684 6.55616 3.34071 6.72003C3.50457 6.87989 3.70041 6.95983 3.92822 6.95983ZM3.92822 10.4669C4.16002 10.4669 4.35586 10.387 4.51573 10.2271C4.67959 10.0632 4.76152 9.86541 4.76152 9.6336C4.76152 9.40579 4.67959 9.20995 4.51573 9.04609C4.35586 8.88222 4.16002 8.80029 3.92822 8.80029C3.70041 8.80029 3.50457 8.88222 3.34071 9.04609C3.17684 9.20995 3.09491 9.40579 3.09491 9.6336C3.09491 9.86541 3.17684 10.0632 3.34071 10.2271C3.50457 10.387 3.70041 10.4669 3.92822 10.4669ZM3.92822 13.974C4.16002 13.974 4.35586 13.8921 4.51573 13.7282C4.67959 13.5643 4.76152 13.3685 4.76152 13.1407C4.76152 12.9129 4.67959 12.717 4.51573 12.5532C4.35586 12.3893 4.16002 12.3074 3.92822 12.3074C3.70041 12.3074 3.50457 12.3893 3.34071 12.5532C3.17684 12.717 3.09491 12.9129 3.09491 13.1407C3.09491 13.3685 3.17684 13.5643 3.34071 13.7282C3.50457 13.8921 3.70041 13.974 3.92822 13.974Z" fill="black"></path>
                    </svg>
                  </div>
                  <div class="modal fade" id="idd966-modal" data-bs-keyboard="false" data-bs-backdrop="static" bis_skin_checked="1">
                    <div class="modal-dialog modal-dialog-centered ks_wth420 view-setting" bis_skin_checked="1">
                      <div class="modal-content ks_mod_comp" bis_skin_checked="1">
                        <div class="ks_mod_body ks_d_flex ks_flex_col" bis_skin_checked="1">
                          <form id="CheckboxForm">
                            <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr ks_ptb10_plr20 ks_brd_btm" bis_skin_checked="1">
                              <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                                <div class="ks_d_flex ks_alg_itm_ctr ks_cs_pointer" bis_skin_checked="1">
                                  <label class="ks_lbl ks_fs14 ks_fw_md ks_wht_spa_nowrap">View Settings</label>
                                </div>
                              </div>
                              <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                                <button data-bs-dismiss="modal" class="ks_btn ks_btn_no_bg ks_wht_spa_nowrap" type="button">Close</button>
                                <button class="ks_btn ks_btn_outline ks_ml12 ks_wht_spa_nowrap" type="button">Reset</button>
                                <button class="ks_btn ks_btn_pm ks_ml12 ks_wht_spa_nowrap" type="button" data-bs-dismiss="modal">Save</button>
                              </div>
                            </div>
                            <div class="ks_w100 ks_p10" bis_skin_checked="1">
                              <div bis_skin_checked="1">
                                <div class="ks_ptb7_plr10" bis_skin_checked="1">
                                  <label class="ks_lbl ks_fs14 ks_fw_md ks_sec_clr">Personal Information</label>
                                </div>
                                <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr" bis_skin_checked="1">
                                  <fieldset class="ks_w100">
                                    <ul>
                                      <li class="view-setting-head-li ks_ptb7_plr10">
                                        <input class="ks_inp_chk_no_brd" id="idd9660-allcheck" type="checkbox">
                                        <label for="idd9660-allcheck" class="ks_lbl ks_fs14 ks_fw_bd">Show all</label>
                                      </li>
                                    </ul>
                                    <ul class="ks_lst_none childbox">
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_2" checked="">
                                        <label for="checkbox_2" class="ks_lbl ks_fs14 ks_fw_md">Property Name</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_3" checked="">
                                        <label for="checkbox_3" class="ks_lbl ks_fs14 ks_fw_md">Phone Number</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_4" checked="">
                                        <label for="checkbox_4" class="ks_lbl ks_fs14 ks_fw_md">Gender</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_5" checked="">
                                        <label for="checkbox_5" class="ks_lbl ks_fs14 ks_fw_md">Created Date</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_11">
                                        <label for="checkbox_11" class="ks_lbl ks_fs14 ks_fw_md">Identify Doc No</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_12">
                                        <label for="checkbox_12" class="ks_lbl ks_fs14 ks_fw_md">Identify Doc Type</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_13">
                                        <label for="checkbox_13" class="ks_lbl ks_fs14 ks_fw_md">Group</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_14">
                                        <label for="checkbox_14" class="ks_lbl ks_fs14 ks_fw_md">City / Province</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_15">
                                        <label for="checkbox_15" class="ks_lbl ks_fs14 ks_fw_md">District (Khan)</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_16">
                                        <label for="checkbox_16" class="ks_lbl ks_fs14 ks_fw_md">Commune (Songkat)</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_17">
                                        <label for="checkbox_17" class="ks_lbl ks_fs14 ks_fw_md">Village</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_18">
                                        <label for="checkbox_18" class="ks_lbl ks_fs14 ks_fw_md">Street No.</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_19">
                                        <label for="checkbox_19" class="ks_lbl ks_fs14 ks_fw_md">House / Building No.</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_20">
                                        <label for="checkbox_20" class="ks_lbl ks_fs14 ks_fw_md">Remark</label>
                                      </li>
                                    </ul>
                                    <div class="my-hr" bis_skin_checked="1"></div>
                                  </fieldset>
                                </div>
                              </div>
                              <div bis_skin_checked="1">
                                <div class="ks_ptb7_plr10" bis_skin_checked="1">
                                  <label class="ks_lbl ks_fs14 ks_fw_md ks_sec_clr">Payment Information</label>
                                </div>
                                <div class="ks_d_flex ks_jt_cont_betw ks_alg_itm_ctr" bis_skin_checked="1">
                                  <fieldset class="ks_w100">
                                    <ul>
                                      <li class="view-setting-head-li ks_ptb7_plr10">
                                        <input class="ks_inp_chk_no_brd" id="idd9661-allcheck" type="checkbox">
                                        <label for="idd9661-allcheck" class="ks_lbl ks_fs14 ks_fw_bd">Show all</label>
                                      </li>
                                    </ul>
                                    <ul class="ks_lst_none childbox">
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_6">
                                        <label for="checkbox_6" class="ks_lbl ks_fs14 ks_fw_md">Parent Account</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_7" checked="">
                                        <label for="checkbox_7" class="ks_lbl ks_fs14 ks_fw_md">Virtual Account No</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_8" checked="">
                                        <label for="checkbox_8" class="ks_lbl ks_fs14 ks_fw_md">Currency</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_9">
                                        <label for="checkbox_9" class="ks_lbl ks_fs14 ks_fw_md">Payment Type</label>
                                      </li>
                                      <li>
                                        <input type="checkbox" class="idd966_check ks_inp_chk_no_brd" id="checkbox_10" checked="">
                                        <label for="checkbox_10" class="ks_lbl ks_fs14 ks_fw_md">Bill Count</label>
                                      </li>
                                    </ul>
                                  </fieldset>
                                </div>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <button data-bs-toggle="dropdown" class="ks_btn ks_btn_pm" id="dropFnPost" >Add New<svg class="ks_wth12 ks_hgt12 ks_wht_fill_clr" viewBox="0 0 13 8">
                    <path d="M6.88019 7.49701C7.00873 7.49701 7.13013 7.47321 7.24438 7.4256C7.35864 7.37323 7.46338 7.29468 7.55859 7.18994L12.6716 1.96979C12.8383 1.80316 12.9216 1.60321 12.9216 1.36993C12.9216 1.20807 12.8811 1.06287 12.8002 0.934326C12.724 0.801025 12.6216 0.696289 12.4931 0.620117C12.3646 0.543945 12.2194 0.505859 12.0575 0.505859C11.8242 0.505859 11.6171 0.593933 11.4362 0.770081L6.56598 5.76886H7.20154L2.32416 0.770081C2.14801 0.593933 1.94092 0.505859 1.70288 0.505859C1.54102 0.505859 1.39581 0.543945 1.26727 0.620117C1.13873 0.696289 1.03638 0.801025 0.960205 0.934326C0.884033 1.06287 0.845947 1.20807 0.845947 1.36993C0.845947 1.48895 0.867371 1.59845 0.910217 1.69843C0.953064 1.79364 1.01495 1.88409 1.09589 1.96979L6.20178 7.19708C6.40649 7.39703 6.63263 7.49701 6.88019 7.49701Z"></path>
                  </svg>
                </button>
                <div class="dropdown-menu dropdown-menu-end ks_dropdown ks_mt5 show" id="newButton" bis_skin_checked="1" style="margin:-99px;">
                  <div class="ks_d_flex ks_flex_col ks_plr5" bis_skin_checked="1">
                    <div class="ks_d_flex ks_alg_itm_ctr ks_drp_itm ks_p10" bis_skin_checked="1">
                      <div bis_skin_checked="1">
                        <svg class="ks_wth18 ks_hgt18" viewBox="0 0 24 24">
                          <path d="M11 11V5H13V11H19V13H13V19H11V13H5V11H11Z"></path>
                        </svg>
                      </div>
                      <label class="ks_lbl ks_fw_md ks_ml10" role="button">New POST</label>
                    </div>
                    <div class="ks_d_flex ks_alg_itm_ctr ks_drp_itm ks_p10" bis_skin_checked="1">
                      <svg class="ks_wth18 ks_hgt18" viewBox="0 0 24 24">
                        <path d="M4 19H20V12H22V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V12H4V19ZM13 9V16H11V9H6L12 3L18 9H13Z"></path>
                      </svg>
                      <label class="ks_lbl ks_fw_md ks_ml10" role="button">Multi</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div bis_skin_checked="1"></div>
          <div class="ks_h100 ks_scrollable ks_d_flex ks_flex_col ks_mt20 ks_ml30 ks_mr30" bis_skin_checked="1">
            <div class="ks_mtauto ks_h100 ks_scrollable ks_pos_rlt" bis_skin_checked="1">
              <div class="ks_h100 ks_d_flex ks_flex_col" bis_skin_checked="1">
                <div class="ks_h100 ks_tbl_wrapper ks_scrollable ks_mbauto" bis_skin_checked="1">
                  <table id="idd966" class="ks_w100" style="width: 100%;">
                    <thead>
                      <tr>
                        <th class="ks_tbl_hd ks_wth1" colspan="1" style="display: table-cell;">
                          <div class="" bis_skin_checked="1">
                            <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                              <input type="checkbox" class=" cursor-pointer">
                            </div>
                          </div>
                        </th>
                        <th class="ks_tbl_hd ks_wth100" colspan="1" style="display: table-cell;">
                          <div class="cursor-pointer select-none" bis_skin_checked="1">Title <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1.2em" width="1.2em" xmlns="http://www.w3.org/2000/svg">
                              <path d="M256 294.1L383 167c9.4-9.4 24.6-9.4 33.9 0s9.3 24.6 0 34L273 345c-9.1 9.1-23.7 9.3-33.1.7L95 201.1c-4.7-4.7-7-10.9-7-17s2.3-12.3 7-17c9.4-9.4 24.6-9.4 33.9 0l127.1 127z"></path>
                            </svg>
                          </div>
                        </th>
                        <th class="ks_tbl_hd ks_wth100" colspan="1" style="display: table-cell;">
                          <div class="" bis_skin_checked="1">Decription</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth100" colspan="1" style="display: table-cell;">
                          <div class="cursor-pointer select-none" bis_skin_checked="1">Post No. <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1.2em" width="1.2em" xmlns="http://www.w3.org/2000/svg">
                              <path d="M256 294.1L383 167c9.4-9.4 24.6-9.4 33.9 0s9.3 24.6 0 34L273 345c-9.1 9.1-23.7 9.3-33.1.7L95 201.1c-4.7-4.7-7-10.9-7-17s2.3-12.3 7-17c9.4-9.4 24.6-9.4 33.9 0l127.1 127z"></path>
                            </svg>
                          </div>
                        </th>
                        <th class="ks_tbl_hd ks_wth120" colspan="1" style="display: table-cell;">
                          <div class="cursor-pointer select-none" bis_skin_checked="1">Address <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1.2em" width="1.2em" xmlns="http://www.w3.org/2000/svg">
                              <path d="M256 294.1L383 167c9.4-9.4 24.6-9.4 33.9 0s9.3 24.6 0 34L273 345c-9.1 9.1-23.7 9.3-33.1.7L95 201.1c-4.7-4.7-7-10.9-7-17s2.3-12.3 7-17c9.4-9.4 24.6-9.4 33.9 0l127.1 127z"></path>
                            </svg>
                          </div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: table-cell;">
                          <div class="" bis_skin_checked="1">Created Date</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth200" colspan="1" style="display: table-cell;">
                          <div class="cursor-pointer select-none" bis_skin_checked="1">Status <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="1.2em" width="1.2em" xmlns="http://www.w3.org/2000/svg">
                              <path d="M256 294.1L383 167c9.4-9.4 24.6-9.4 33.9 0s9.3 24.6 0 34L273 345c-9.1 9.1-23.7 9.3-33.1.7L95 201.1c-4.7-4.7-7-10.9-7-17s2.3-12.3 7-17c9.4-9.4 24.6-9.4 33.9 0l127.1 127z"></path>
                            </svg>
                          </div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Payment Type</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Identify Doc No</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Identify Doc Type</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth80" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Group</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth120" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">City / Province</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">District (Khan)</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Commune (Songkat)</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth110" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Village</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth130" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Street No.</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth150" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">House / Building No.</div>
                        </th>
                        <th class="ks_tbl_hd" colspan="1" style="display: none;">
                          <div class="" bis_skin_checked="1">Remark</div>
                        </th>
                        <th class="ks_tbl_hd ks_wth1"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="cursor-pointer ks_brd_top ks_tbl_data_row">
                        <td class="ks_tbl_data" style="display: table-cell;">
                          <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                            <input type="checkbox" class=" cursor-pointer">
                          </div>
                        </td>
                        <td class="ks_tbl_data" style="display: table-cell;">
                          <div class="ks_pl0" bis_skin_checked="1">
                            <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                             <!--!  <div class="ks_circle ks_wth32 ks_hgt32" bis_skin_checked="1">

                                <img alt="payer_profile" loading="lazy" width="32" height="32" decoding="async" data-nimg="1" class="ks_img" src="/img/avatar.2eb62363.svg" style="color: transparent;">

                              </div>
                                 -->
                              <span class="ks_lbl ks_fw_md ks_ml8">Pub tmey Apartment</span>
                            </div>
                          </div>
                        </td>
                        <td class="ks_tbl_data" style="display: table-cell;">Room</td>
                        <td class="ks_tbl_data" style="display: table-cell;">PRO-0012</td>
                        <td class="ks_tbl_data" style="display: table-cell;">Phnom Penh, Pub tmey , ....</td>
                        <td class="ks_tbl_data" style="display: none;">114-02-102349-0</td>
                        <td class="ks_tbl_data" style="display: table-cell;">20-03-2024</td>
                        <td class="ks_tbl_data" style="display: none;">Fixed Amount</td>
                        <td class="ks_tbl_data" style="display: table-cell;">Available</td>
                        <td class="ks_tbl_data" style="display: none;">190301491</td>
                        <td class="ks_tbl_data" style="display: none;">National ID</td>
                        <td class="ks_tbl_data" style="display: none;">Rental</td>
                        <td class="ks_tbl_data" style="display: none;">Banteay Meanchey</td>
                        <td class="ks_tbl_data" style="display: none;">Mongkol Borei</td>
                        <td class="ks_tbl_data" style="display: none;">Ruessei Kraok</td>
                        <td class="ks_tbl_data" style="display: none;">Kaoh Kaev</td>
                        <td class="ks_tbl_data" style="display: none;"></td>
                        <td class="ks_tbl_data" style="display: none;"></td>

                        <td class="editable">
                          <div class="ks_d_flex ks_jt_cont_ctr ks_alg_itm_ctr ks_tbl_act_blk" bis_skin_checked="1">
                            <span title="edit">
                              <svg class="ks_wth24 ks_hgt24" viewBox="0 0 24 24">
                                <path d="M7.94548 19.5197L10.7335 18.2861C10.9241 18.2044 11.085 18.0946 11.216 17.9565L19.3924 9.38679C19.7975 8.9536 20 8.49215 20 8.00246C20 7.50648 19.7915 7.0419 19.3745 6.60871L17.5248 4.64992C17.1197 4.21673 16.6818 4.00014 16.2112 4.00014C15.7465 3.99386 15.3087 4.20418 14.8976 4.63109L6.71232 13.1913C6.64084 13.2667 6.58126 13.342 6.53361 13.4174C6.4919 13.4864 6.44723 13.5775 6.39957 13.6905L5.21109 16.6381C5.10982 16.8829 5.07408 17.1246 5.10386 17.3632C5.13961 17.6017 5.24386 17.8152 5.41662 18.0035L6.64084 19.2937C6.8136 19.4758 7.01317 19.5856 7.23954 19.6233C7.46592 19.661 7.70123 19.6264 7.94548 19.5197ZM7.75782 17.8811C7.68038 17.9125 7.61187 17.9251 7.5523 17.9188C7.49273 17.9125 7.4272 17.8686 7.35571 17.787L6.84636 17.2502C6.73317 17.1309 6.70934 16.9928 6.77487 16.8358L7.79357 14.3308L15.8716 5.86475C16.098 5.63246 16.3154 5.62932 16.5239 5.85533L18.2307 7.66344C18.4452 7.88945 18.4392 8.12174 18.2128 8.36031L10.1437 16.817L7.75782 17.8811ZM4.42473 20H5.56853C5.69959 20 5.79788 19.9843 5.86341 19.9529C5.9349 19.9215 6.0183 19.8682 6.11362 19.7928L6.98934 19.0771L5.64895 17.6551L4.14772 19.3031C4.0107 19.4475 3.969 19.6013 4.02262 19.7646C4.08219 19.9215 4.21623 20 4.42473 20ZM6.78381 14.2649L10.385 18.0789L11.3322 17.0807L7.73995 13.2667L6.78381 14.2649ZM13.8432 6.87239L17.4443 10.6769L18.4005 9.68814L14.7993 5.87416L13.8432 6.87239Z"></path>
                              </svg>
                            </span>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="ks_d_flex ks_flex_row ks_alg_itm_ctr ks_ptb20" bis_skin_checked="1">
                  <div class="ks_d_flex ks_alg_itm_ctr ks_comp_blk6" bis_skin_checked="1">
                    <span class="ks_lbl ks_mg0">Page rows</span>
                    <div class="ks_ml20" bis_skin_checked="1">
                      <select class="ks_select" title="ks_page_row">
                        <option selected="">10</option>
                        <option>25</option>
                        <option>50</option>
                        <option>100</option>
                      </select>
                    </div>
                    <div class="ks_ml25" bis_skin_checked="1">
                      <div class="ks_lbl ks_mg0" bis_skin_checked="1">1 of 1</div>
                    </div>
                  </div>
                  <div class="ks_d_flex ks_alg_itm_ctr" bis_skin_checked="1">
                    <div class="ks_ml30" bis_skin_checked="1">
                      <span title="first">
                        <a class="ks_wth24 ks_hgt24 ks_jump_prev_svg disabled-page">
                          <svg class="ks_wth24 ks_hgt24 ks_jump_prev_svg" viewBox="0 0 24 24">
                            <path fill="#000000" d="M16 7.34277C16 7.21517 15.9704 7.10124 15.9111 7.00098C15.8473 6.89616 15.7653 6.81413 15.665 6.75488C15.5648 6.69564 15.4486 6.66602 15.3164 6.66602C15.2298 6.66602 15.1478 6.68197 15.0703 6.71387C14.9883 6.74577 14.9108 6.7959 14.8379 6.86426L9.72461 11.8271C9.57422 11.973 9.49902 12.1416 9.49902 12.333C9.49902 12.4333 9.51953 12.5244 9.56055 12.6064C9.60156 12.693 9.65625 12.7705 9.72461 12.8389L14.8447 17.8018C14.9176 17.8656 14.9928 17.9134 15.0703 17.9453C15.1478 17.9818 15.2321 18 15.3232 18C15.4508 18 15.5648 17.9704 15.665 17.9111C15.7653 17.8519 15.8473 17.7699 15.9111 17.665C15.9704 17.5648 16 17.4508 16 17.3232C16 17.2275 15.9818 17.1387 15.9453 17.0566C15.9089 16.9746 15.8587 16.9017 15.7949 16.8379L10.7432 11.9365L10.7432 12.7295L15.7949 7.82812C15.8587 7.75977 15.9089 7.68685 15.9453 7.60937C15.9818 7.52734 16 7.43848 16 7.34277ZM9.51953 7.30859C9.51953 7.12174 9.45801 6.96907 9.33496 6.85059C9.21192 6.72754 9.05469 6.66602 8.86328 6.66602C8.67643 6.66601 8.52149 6.72754 8.39844 6.85059C8.27083 6.96907 8.20703 7.12174 8.20703 7.30859L8.20703 17.3437C8.20703 17.5352 8.27083 17.6924 8.39844 17.8154C8.52148 17.9385 8.67643 18 8.86328 18C9.05469 18 9.21191 17.9385 9.33496 17.8154C9.45801 17.6924 9.51953 17.5352 9.51953 17.3437L9.51953 7.30859Z"></path>
                          </svg>
                        </a>
                      </span>
                      <span title="previous">
                        <a class="ks_wth24 ks_hgt24 ks_prev_svg ks_ml20 disabled-page">
                          <svg class="ks_wth24 ks_hgt24 ks_prev_svg ks_ml20" viewBox="0 0 24 24">
                            <path fill="#000000" d="M8.54004 12.3262C8.54004 12.4219 8.55827 12.5107 8.59473 12.5928C8.63119 12.6794 8.68815 12.7591 8.76563 12.832L13.8447 17.8018C13.9723 17.9339 14.1296 18 14.3164 18C14.4486 18 14.5648 17.9704 14.665 17.9111C14.7653 17.8519 14.8473 17.7721 14.9111 17.6719C14.9704 17.5716 15 17.4554 15 17.3232C15 17.141 14.9316 16.9814 14.7949 16.8447L10.1738 12.3262L14.7949 7.80762C14.9316 7.6709 15 7.51139 15 7.3291C15 7.2015 14.9704 7.08757 14.9111 6.9873C14.8473 6.88249 14.7653 6.80046 14.665 6.74121C14.5648 6.68197 14.4486 6.65234 14.3164 6.65234C14.1296 6.65234 13.9723 6.71842 13.8447 6.85059L8.76563 11.8203C8.68815 11.8932 8.63119 11.9707 8.59473 12.0527C8.55827 12.1393 8.54004 12.2305 8.54004 12.3262Z"></path>
                          </svg>
                        </a>
                      </span>
                      <span title="next">
                        <a class="ks_wth24 ks_hgt24 ks_nx_svg ks_ml20 disabled-page">
                          <svg class="ks_wth24 ks_hgt24 ks_nx_svg ks_ml20" viewBox="0 0 24 24">
                            <path fill="#000000" d="M15.46 11.6738C15.46 11.5781 15.4417 11.4893 15.4053 11.4072C15.3688 11.3206 15.3118 11.2409 15.2344 11.168L10.1553 6.19824C10.0277 6.06608 9.87044 6 9.68359 6C9.55143 6 9.43522 6.02962 9.33496 6.08887C9.2347 6.14811 9.15267 6.22786 9.08887 6.32812C9.02962 6.42839 9 6.5446 9 6.67676C9 6.85905 9.06836 7.01855 9.20508 7.15527L13.8262 11.6738L9.20508 16.1924C9.06836 16.3291 9 16.4886 9 16.6709C9 16.7985 9.02962 16.9124 9.08887 17.0127C9.15267 17.1175 9.2347 17.1995 9.33496 17.2588C9.43522 17.318 9.55143 17.3477 9.68359 17.3477C9.87044 17.3477 10.0277 17.2816 10.1553 17.1494L15.2344 12.1797C15.3118 12.1068 15.3688 12.0293 15.4053 11.9473C15.4417 11.8607 15.46 11.7695 15.46 11.6738Z"></path>
                          </svg>
                        </a>
                      </span>
                      <span title="last">
                        <a class="ks_wth24 ks_hgt24 ks_jump_nx_svg ks_ml20 disabled-page">
                          <svg fill="#000000" class="ks_wth24 ks_hgt24 ks_jump_nx_svg ks_ml20" viewBox="0 0 24 24">
                            <path d="M8 16.6572C8 16.7848 8.02962 16.8988 8.08887 16.999C8.15267 17.1038 8.2347 17.1859 8.33496 17.2451C8.43522 17.3044 8.55143 17.334 8.68359 17.334C8.77018 17.334 8.85221 17.318 8.92969 17.2861C9.01172 17.2542 9.08919 17.2041 9.16211 17.1357L14.2754 12.1729C14.4258 12.027 14.501 11.8584 14.501 11.667C14.501 11.5667 14.4805 11.4756 14.4395 11.3936C14.3984 11.307 14.3438 11.2295 14.2754 11.1611L9.15527 6.19824C9.08236 6.13444 9.00716 6.08659 8.92969 6.05469C8.85221 6.01823 8.7679 6 8.67676 6C8.54915 6 8.43522 6.02962 8.33496 6.08887C8.2347 6.14811 8.15267 6.23014 8.08887 6.33496C8.02962 6.43522 8 6.54915 8 6.67676C8 6.77246 8.01823 6.86133 8.05469 6.94336C8.09115 7.02539 8.14128 7.09831 8.20508 7.16211L13.2568 12.0635V11.2705L8.20508 16.1719C8.14128 16.2402 8.09115 16.3132 8.05469 16.3906C8.01823 16.4727 8 16.5615 8 16.6572ZM14.4805 16.6914C14.4805 16.8783 14.542 17.0309 14.665 17.1494C14.7881 17.2725 14.9453 17.334 15.1367 17.334C15.3236 17.334 15.4785 17.2725 15.6016 17.1494C15.7292 17.0309 15.793 16.8783 15.793 16.6914V6.65625C15.793 6.46484 15.7292 6.30762 15.6016 6.18457C15.4785 6.06152 15.3236 6 15.1367 6C14.9453 6 14.7881 6.06152 14.665 6.18457C14.542 6.30762 14.4805 6.46484 14.4805 6.65625V16.6914Z"></path>
                          </svg>
                        </a>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <next-route-announcer>
      <p aria-live="assertive" id="__next-route-announcer__" role="alert" style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; top: 0px; width: 1px; white-space: nowrap; overflow-wrap: normal;"> | Property</p>
    </next-route-announcer>
    <script src="/js/admin.js" data-nscript="lazyOnload"></script>
   </div>
</body>
</html>