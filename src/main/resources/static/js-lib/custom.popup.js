"use strict";
var _popList = [];
var _dialogList = [];
var _smartPopupZIndex = 1000000;
$.fn.smartPop = function (opt) {
    var colorbox = 'colorbox';
    var prefix = 'cbox';
    var boxElement = prefix + 'Element';
    var event_open = prefix + '_open';
    var event_load = prefix + '_load';
    var event_complete = prefix + '_complete';
    var event_cleanup = prefix + '_cleanup';
    var event_closed = prefix + '_closed';
    var event_purge = prefix + '_purge';
    var isIE = !$.support.opacity && !$.support.style;
    var isIE6 = isIE && !window.XMLHttpRequest;
    var event_ie6 = prefix + '_IE6';
    var $overlay;
    var $box = this;
    var $wrap;
    var $content;
    var $topBorder;
    var $leftBorder;
    var $rightBorder;
    var $bottomBorder;
    var $related;
    var $window;
    var $loaded;
    var $loadingBay;
    var $loadingOverlay;
    var $title;
    var $current;
    var $slideshow;
    var $next;
    var $prev;
    var $close;
    var $groupControls;
    var iframeObject;
    var settings;
    var interfaceHeight;
    var interfaceWidth;
    var loadedHeight;
    var loadedWidth;
    var element;
    var index;
    var photo;
    var open;
    var active;
    var closing;
    var loadingTimer;
    var publicMethod;
    var div = "div";
    var init;
    var defauleOpt = {
        transition: "elastic",
        speed: 1500,
        width: false,
        initialWidth: "600",
        innerWidth: false,
        maxWidth: false,
        height: false,
        initialHeight: "450",
        innerHeight: false,
        maxHeight: 800,
        scalePhotos: true,
        scrolling: true,
        inline: false,
        html: false,
        iframe: false,
        fastIframe: true,
        photo: false,
        href: false,
        title: false,
        rel: false,
        opacity: 0.9,
        preloading: true,
        current: "image {current} of {total}",
        previous: "previous",
        next: "next",
        close: "close",
        xhrError: "This content failed to load.",
        imgError: "This image failed to load.",
        open: false,
        returnFocus: true,
        reposition: true,
        loop: true,
        slideshow: false,
        slideshowAuto: true,
        slideshowSpeed: 2500,
        slideshowStart: "start slideshow",
        slideshowStop: "stop slideshow",
        onOpen: false,
        onLoad: false,
        onComplete: false,
        onCleanup: false,
        overlayClose: true,
        escKey: true,
        arrowKey: true,
        top: false,
        bottom: false,
        left: false,
        right: false,
        fixed: false,
        data: undefined,
        target: undefined,
        param: undefined,
        sendMethod: "post",
        frm: undefined
    };
    var smartPop = {
        open: function (options) {
            _smartPopupZIndex += 2;
            smartPop.appendHTML();
            smartPop.makeSettings(options);
            settings.w = smartPop.setSize(settings.initialWidth, 'x');
            settings.h = smartPop.setSize(settings.initialHeight, 'y');
            smartPop.position();
            $groupControls.add($title).hide();
            smartPop.load();
            //console.log(loadingTimer);
            setTimeout(function () {
                $overlay.css({
                    "width": document.body.scrollWidth + "px",
                    "height": document.body.scrollHeight + "px",
                    "top": "0px",
                    "left": "0px",
                    "position": "fixed",
                    "background": "rgb(0, 0, 0)",
                    "opacity": "0.3",
                    "cursor": "pointer",
                    "pointer": "auto",
                    "z-index": _smartPopupZIndex - 1
                }).show();
            }, 450);
        },
        appendHTML: function () {
            if (document.body) {
                $window = $(window);
                $overlay = smartPop.tag(div, "Overlay", isIE6 ? 'position:absolute' : '').hide();
                $loadingOverlay = smartPop.tag(div, "LoadingOverlay").add(smartPop.tag(div, "LoadingGraphic"));
                $wrap = smartPop.tag(div, "Wrapper");
                $content = smartPop.tag(div, "Content").append($loaded = smartPop.tag(div, "LoadedContent", 'width:0; height:0; overflow:hidden'), $title = smartPop.tag(div, "Title"), $current = smartPop.tag(div, "Current"), $next = smartPop.tag(div, "Next"), $prev = smartPop.tag(div, "Previous"), $slideshow = smartPop.tag(div, "Slideshow").bind(event_open, false));
                $wrap.append(smartPop.tag(div).append(smartPop.tag(div, "TopLeft"), $topBorder = smartPop.tag(div, "TopCenter"), smartPop.tag(div, "TopRight")), smartPop.tag(div, false, 'clear:left').append($leftBorder = smartPop.tag(div, "MiddleLeft"), $content, $rightBorder = smartPop.tag(div, "MiddleRight")), smartPop.tag(div, false, 'clear:left').append(smartPop.tag(div, "BottomLeft"), $bottomBorder = smartPop.tag(div, "BottomCenter"), smartPop.tag(div, "BottomRight"))).find('div div').css({ 'float': 'left' });
                $loadingBay = smartPop.tag(div, false, 'position:absolute; width:100%; visibility:hidden; display:none');
                $groupControls = $next.add($prev).add($current).add($slideshow);
                $(document.body).append($overlay, $box.append($wrap, $loadingBay));
                interfaceHeight = $topBorder.height() + $bottomBorder.height() + $content.outerHeight(true) - $content.height();
                interfaceWidth = $leftBorder.width() + $rightBorder.width() + $content.outerWidth(true) - $content.width();
                loadedHeight = $loaded.outerHeight(true);
                loadedWidth = $loaded.outerWidth(true);
                $box.css({ "padding-bottom": interfaceHeight, "padding-right": interfaceWidth, "z-index": _smartPopupZIndex });
            }
        },
        position: function (speed, loadedCallback) {
            var css, top = 0, left = 0, scrollTop, scrollLeft;
            var offset = $box.offset();
            $window.unbind('resize.' + prefix);
            $box.css({ top: -9e4, left: -9e4 });
            scrollTop = $window.scrollTop();
            scrollLeft = $window.scrollLeft();
            if (settings.fixed && !isIE6) {
                if (offset) {
                    offset.top -= scrollTop;
                    offset.left -= scrollLeft;
                }
                $box.css({ position: 'fixed' });
            }
            else {
                top = scrollTop;
                left = scrollLeft;
                $box.css({ position: 'absolute' });
            }
            if (settings.right !== false) {
                left += Math.max(smartPop.winWidth() - settings.w - loadedWidth - interfaceWidth - smartPop.setSize(settings.right, 'x'), 0);
            }
            else if (settings.left !== false) {
                left += smartPop.setSize(settings.left, 'x');
            }
            else {
                left += Math.round(Math.max(smartPop.winWidth() - settings.w - loadedWidth - interfaceWidth, 0) / 2);
            }
            if (settings.bottom !== false) {
                top += Math.max(smartPop.winHeight() - settings.h - loadedHeight - interfaceHeight - smartPop.setSize(settings.bottom, 'y'), 0);
            }
            else if (settings.top !== false) {
                top += smartPop.setSize(settings.top, 'y');
            }
            else {
                top += Math.round(Math.max(smartPop.winHeight() - settings.h - loadedHeight - interfaceHeight, 0) / 2);
            }
            $box.css({ top: offset.top, left: offset.left });
            $overlay.css({ "width": Math.max(parent.document.documentElement.clientWidth, parent.document.body.clientWidth) + "px", "height": Math.max(parent.document.documentElement.scrollHeight, parent.document.body.scrollHeight) + "px" });
            $overlay.css({ "width": Math.max(parent.document.documentElement.scrollWidth, parent.document.body.scrollWidth) + "px", "height": Math.max(parent.document.documentElement.scrollHeight, parent.document.body.scrollHeight) + "px" });
            speed = ($box.width() === settings.w + loadedWidth && $box.height() === settings.h + loadedHeight) ? 0 : speed || 0;
            $wrap[0].style.width = $wrap[0].style.height = "100%";
            function modalDimensions(that) {
                $topBorder[0].style.width = $bottomBorder[0].style.width = $content[0].style.width = that.style.width;
                $content[0].style.height = $leftBorder[0].style.height = $rightBorder[0].style.height = that.style.height;
            }
            css = { width: settings.w + loadedWidth, height: settings.h + loadedHeight, top: 0, left: 0 };
            if (speed === 0) {
                $box.css(css);
            }
            $box.dequeue().animate(css, {
                complete: function () {
                    modalDimensions(this);
                    active = false;
                    if (settings.reposition) {
                        setTimeout(function () {
                            $window.bind('resize.' + prefix, smartPop.position);
                        }, 1);
                    }
                    if (loadedCallback) {
                        loadedCallback();
                    }
                },
                step: function () {
                    modalDimensions(this);
                }
            });
        },
        load: function () {
            var href, setResize, prep = smartPop.prep;
            settings.h = settings.height ?
                smartPop.setSize(settings.height, 'y') - loadedHeight - interfaceHeight :
                settings.innerHeight && smartPop.setSize(settings.innerHeight, 'y');
            settings.w = settings.width ?
                smartPop.setSize(settings.width, 'x') - loadedWidth - interfaceWidth :
                settings.innerWidth && smartPop.setSize(settings.innerWidth, 'x');
            settings.mw = settings.w;
            settings.mh = settings.h;
            if (settings.maxWidth) {
                settings.mw = smartPop.setSize(settings.maxWidth, 'x') - loadedWidth - interfaceWidth;
                settings.mw = settings.w && settings.w < settings.mw ? settings.w : settings.mw;
            }
            if (settings.maxHeight) {
                settings.mh = smartPop.setSize(settings.maxHeight, 'y') - loadedHeight - interfaceHeight;
                settings.mh = settings.h && settings.h < settings.mh ? settings.h : settings.mh;
            }
            href = settings.href;
            loadingTimer = setTimeout(function () {
                $loadingOverlay.show().appendTo($content);
            }, 100);
            prep(" ");
        },
        prep: function (object) {
            var callback, speed = settings.transition === "none" ? 0 : settings.speed;
            $loaded.remove();
            $loaded = smartPop.tag(div, 'LoadedContent').append(object);
            function getWidth() {
                settings.w = settings.w || $loaded.width();
                settings.w = settings.mw && settings.mw < settings.w ? settings.mw : settings.w;
                return settings.w;
            }
            function getHeight() {
                settings.h = settings.h || $loaded.height();
                settings.h = settings.mh && settings.mh < settings.h ? settings.mh : settings.h;
                return settings.h;
            }
            $loaded.hide()
                .appendTo($loadingBay.show())
                .css({ width: getWidth(), overflow: settings.scrolling ? 'hidden' : 'hidden' })
                .css({ height: getHeight() })
                .prependTo($content);
            $loadingBay.hide();
            $(photo).css({ 'float': 'none' });
            if (isIE6) {
                $('select').not($box.find('select')).filter(function () {
                    return this.style.visibility !== 'hidden';
                }).css({ 'visibility': 'hidden' }).one(event_cleanup, function () {
                    this.style.visibility = 'inherit';
                });
            }
            callback = function () {
                var preload, i, iframe, frameBorder = 'frameBorder', allowTransparency = 'allowTransparency', complete, src, img, data;
                function removeFilter() {
                    if (isIE) {
                        $box[0].style.removeAttribute('filter');
                    }
                }
                var iframeName = prefix + (+new Date());
                var param = settings.param != undefined ? "?input=" + encodeURI(jex.toStr(settings.param)) : "";
                var srcUrl = settings.href + param;
                iframe = $("<iframe name=" + iframeName + " frameBorder=0 src=" + srcUrl + "></iframe>");
                iframeObject = iframe;
                $(iframe).width('100%');
                $(iframe).height(settings.height);
                $box.show();
                complete = function () {
                    $(iframe).contents().find(".pop_header").hide();
                    $(iframe).contents().find(".pop_wrap .pop_container").css("top", "0");
                    $(iframe).contents().find(".pop_header > h1, .pop_tit1_wrap > h1").each(function () {
                        if ($(this).css('display') == 'block') {
                            top.$(iframe).closest(".ui-dialog").find("span.ui-dialog-title").text($(this).text());
                            if ("KM" === jexjs.getLang()) {
                                top.$(iframe).closest(".ui-dialog").find("span.ui-dialog-title").attr("style", "font-family:noto_serifregular, Inter, Noto Sans KR, sans-serif;font-size:16px");
                            }
                        }
                    });
                    clearTimeout(loadingTimer);
                    $loadingOverlay.detach().hide();
                    $(iframe).contents().find('body').css("overflow-y", "visible").focus();
                    setTimeout(function () { $("#loadImg").remove(); }, 50);
                };
                $title.html(settings.title).add($loaded).show();
                $groupControls.hide();
                if (frameBorder in iframe) {
                    iframe[frameBorder] = 0;
                }
                if (allowTransparency in iframe) {
                    iframe[allowTransparency] = "true";
                }
                $(iframe).one('load', complete);
                var paramQuery = "";
                if (settings.sendMethod == "post") {
                    if (settings.frm) {
                        var $form = settings.frm.clone();
                        $form.attr("name", $form.attr("id"));
                        $loaded.append($form);
                        $(iframe).addClass(prefix + 'Iframe').appendTo($loaded);
                        $form.attr("method", "post");
                        $form.attr("action", settings.href);
                        $form.attr("target", iframeName);
                        $form.submit();
                        $form.remove();
                    }
                    else {
                        var $form_1 = smartPop.tag("form", "form");
                        $form_1.attr("name", $form_1.attr("id"));
                        if (settings.param) {
                            $.each(settings.param, function (i, v) {
                                var $element = $(document.createElement("input"));
                                $element.attr("type", "hidden");
                                $element.attr("id", i);
                                $element.attr("name", i);
                                $element.val(v);
                                $form_1.append($element);
                            });
                        }
                        $loaded.append($form_1);
                        $(iframe).addClass(prefix + 'Iframe').appendTo($loaded);
                        $form_1.attr("method", "post");
                        $form_1.attr("action", settings.href);
                        $form_1.attr("target", iframeName);
                        $form_1.submit();
                        $form_1.remove();
                    }
                }
                else {
                    if (settings.param) {
                        paramQuery += "?";
                        var tempQuery_1 = "";
                        $.each(settings.param, function (i, v) {
                            tempQuery_1 += i + "=" + v + "&";
                        });
                        paramQuery += tempQuery_1;
                    }
                    iframe.src = encodeURI(settings.href + paramQuery);
                }
                iframe.scrolling = "no";
            };
            if (settings.transition === 'fade') {
                $box.fadeTo(speed, 0, function () {
                    smartPop.position(0, callback);
                });
            }
            else {
                smartPop.position(speed, callback);
            }
        },
        resize: function (options) {
            if (options.width) {
                settings.w = smartPop.setSize(options.width, 'x') - loadedWidth - interfaceWidth;
            }
            if (options.innerWidth) {
                settings.w = smartPop.setSize(options.innerWidth, 'x');
            }
            $loaded.css({ width: settings.w });
            if (options.height) {
                settings.h = smartPop.setSize(options.height, 'y') - loadedHeight - interfaceHeight;
            }
            if (options.innerHeight) {
                settings.h = smartPop.setSize(options.innerHeight, 'y');
                $(iframeObject).height(options.innerHeight);
            }
            if (!options.innerHeight && !options.height) {
                $loaded.css({ height: "auto" });
                settings.h = $loaded.height();
            }
            $loaded.css({ height: settings.h });
            smartPop.position(settings.transition === "none" ? 0 : settings.speed);
        },
        close: function () {
            $window.unbind('.' + prefix + ' .' + event_ie6);
            $overlay.fadeTo(200, 0);
            $box.stop().fadeTo(300, 0, function () {
                $box.add($overlay).css({ 'opacity': 1, cursor: 'auto' }).hide();
                $loaded.remove();
                $overlay.remove();
                $box.remove();
                if (_popList.length > 0) {
                    _popList.pop();
                    if (_popList.length > 0) {
                    }
                }
                setTimeout(function () {
                    closing = false;
                }, 1);
            });
        },
        completeClose: function () {
            $window.unbind('.' + prefix + ' .' + event_ie6);
            $overlay.fadeTo(200, 0);
            $box.stop().fadeTo(100, 0, function () {
                $box.closest(".ui-dialog-content").dialog("close").remove();
                $box.add($overlay).css({ 'opacity': 1, cursor: 'auto' }).hide();
                $loaded.remove();
                $overlay.remove();
                $box.remove();
                setTimeout(function () {
                    closing = false;
                }, 1);
            });
        },
        tag: function (tag, id, css) {
            var element = document.createElement(tag);
            if (id) {
                element.id = prefix + id;
            }
            if (css) {
                element.style.cssText = css;
            }
            return $(element);
        },
        makeSettings: function (options) {
            settings = $.extend({}, defauleOpt);
            settings.width = options.width;
            settings.height = options.height;
            settings.href = options.href;
            settings.target = options.target;
            settings.param = options.param;
            settings.frm = options.frm;
            settings.onClose = options.onClose;
            if (options.maxHeight)
                settings.maxHeight = options.maxHeight;
        },
        getSettings: function () {
            return settings;
        },
        iframeTouch: function () {
            $(iframeObject).height(settings.height - 70);
        },
        setSize: function (size, dimension) {
            return Math.round((/%/.test(size) ? ((dimension === 'x' ? smartPop.winWidth() : smartPop.winHeight()) / 100) : 1) * parseInt(size, 10));
        },
        winWidth: function () {
            return window.innerWidth || $window.width();
        },
        winHeight: function () {
            return window.innerHeight || $window.height();
        }
    };
    smartPop.open(opt);
    return smartPop;
};
jQuery.fn.center = function (parent) {
    if (parent) {
        parent = this.parent();
    }
    else {
        parent = window;
    }
    this.css({
        "position": "absolute",
        "top": ((($(parent).height() - this.outerHeight()) / 2) + $(parent).scrollTop() + "px"),
        "left": ((($(parent).width() - this.outerWidth()) / 2) + $(parent).scrollLeft() + "px")
    });
    return this;
};
document.onkeydown = function (evt) {
    evt = evt || window.event;
    var isEscape = false;
    if ("key" in evt) {
        isEscape = (evt.key === "Escape" || evt.key === "Esc");
    }
    else {
        isEscape = (evt.keyCode === 27);
    }
    if (isEscape) {
        if ($(document).find("iframe:not(#_jexGridDownloadIfrm)").length > 0) {
            close_smartPop();
        }
    }
};
function smartOpenPop(option) {
    var dialogDiv = document.createElement("div");
    var dialogId = "did_" + ($(".ui-dialog").length + 1);
    var img = '<img id="loadImg" src="/img/loading.gif" style="position: absolute; width: 6%; top: 40%; left: 45%;z-index: 999999999">';
    var css = { "border-bottom-right-radius": "0", "border-bottom-left-radius": "0", 'cursor': 'default', 'padding': '13px 0 13px 20px', 'height': '16px', 'border': '1px solid #3c434e', 'background-color': '#4c5663', 'font-size': '14px', 'color': '#fff' };
    var closeButtonId = Math.random().toString(36).slice(2);
    $(document).on("click", "a#" + closeButtonId, function () {
        if (option.onClose) {
            close_smartPop(option.onClose);
        }
        else {
            close_smartPop();
        }
        $('#' + dialogId).dialog('close');
    });
    var href = "<a id=\"" + closeButtonId + "\" href=\"javascript:\" ";
    href += 'style="position: absolute;top: 15px;right: 20px;" ><img src="../img/btn/btn_popclose.gif"></a>';
    href += '<a href="javascript:" onclick="popZoomInOut(this)" class="zoom_in" style="position: absolute;top: 15px;right: 47px;" ><img  src="../img/squares.png" style="width:14px;"></a>';
    var dopt = {
        autoOpen: false, show: 'scale',
        width: option.width,
        height: Number(option.height) + 47,
        resizable: false,
        modal: true,
        open: function () {
            var _this = this;
            if (option.noheader) {
                $(this).closest(".ui-dialog").find(".ui-dialog-titlebar").css("display", "none");
            }
            $(this).parent().promise().done(function () {
                $(_this).closest(".ui-dialog").css({ "background": "white", "border-bottom-right-radius": "3px", "border-bottom-left-radius": "3px" }).append(img);
                $(_this).css('overflow', 'hidden');
                $(_this).closest(".ui-dialog").find(".ui-dialog-titlebar").append(href).css(css);
                $(_this).closest(".ui-dialog").find(".ui-dialog-titlebar-close").hide();
                $(".ui-dialog-content").css({ "padding": "0px", "overflow": "hidden", "position": "relative", "width": "100%" });
                $(".ui-widget.ui-widget-content").css("padding", "0");
                $('.ui-dialog').css("border", "none");
                $(".ui-widget-overlay").css({ "background": "rgb(0, 0, 0)", "opacity": "-0.7" });
                if (option.href == "fnif_0002_003.act") {
                    $(_this).closest(".ui-dialog").css('top', '-500px');
                }
                if (option.href == "comm_0103_001.act") {
                    $(_this).closest(".ui-dialog").css('top', '0px');
                }
            });
            $(this).parent().center(true);
            if ($(this).parent().position().top < 0) {
                $(this).css("top", "30px");
            }
        },
        close: function () { $(this).remove(); },
        drag: function () { $(".ui-dialog-titlebar").css({ 'cursor': 'move' }); },
        dragStop: function () { $(".ui-dialog-titlebar").css({ 'cursor': 'default' }); }
    };
    $(dialogDiv).attr("id", dialogId).dialog(dopt).prev(".ui-dialog-titlebar").css("background-color", "  #4c5663");
    $(dialogDiv).dialog("open");
    $("#" + dialogId).css("height", option.height + "px");
    _dialogList.push($(dialogDiv).closest(".ui-dialog .ui-dialog-content"));
    var isIE = !$.support.opacity && !$.support.style;
    var isIE6 = isIE && !window.XMLHttpRequest;
    var element = document.createElement("div");
    $(element).attr({ id: "colorbox", 'class': isIE ? "smartPop" + (isIE6 ? 'IE6' : 'IE') : '' }).hide();
    var smartPop = $(element).smartPop(option);
    _popList.push(smartPop);
    $(dialogDiv).closest(".ui-dialog").css({ "z-index": (Number($(element).css("z-index"))) + "" });
    $(dialogDiv).append($(element));
    setTimeout(function () {
        $(window).unbind('resize.cbox');
    }, 500);
}
function smartClosePop(callbackFn, data) {
    if (_popList.length > 0) {
        var targetDocument = _popList[_popList.length - 1].getSettings().target;
        var onClose = _popList[_popList.length - 1].getSettings().onClose;
        if (onClose) {
            callbackFn = onClose;
        }
        _popList[_popList.length - 1].completeClose();
        _popList.pop();
        if (targetDocument != undefined || targetDocument != null) {
            if (callbackFn != undefined || callbackFn != null) {
                if (typeof callbackFn === "string") {
                    callbackFn = targetDocument[callbackFn];
                }
                if ($.isFunction(callbackFn)) {
                    //console.log("callbackFn", data);
                    callbackFn(data);
                }
            }
        }
        if (_popList.length > 0) {
        }
        _dialogList.pop();
    }
}
function popZoomInOut(o) {
    if ($(o).attr("class") == "zoom_in") {
        var dialog_1 = $(_dialogList[_dialogList.length - 1]);
        var wHeight = $(dialog_1).height();
        var dHeight_1 = Number(wHeight) * 0.5;
        var wWidth = $(dialog_1).width();
        var dWidth_1 = Number(wWidth) * 0.7;
        $(_dialogList[_dialogList.length - 1]).dialog("widget").animate({ width: dWidth_1, height: dHeight_1 }, {
            duration: 500, step: function () {
                $(_dialogList[_dialogList.length - 1]).dialog('option', 'position', 'center');
            }
        });
        setTimeout(function () {
            $(_dialogList[_dialogList.length - 1]).dialog("option", "height", dHeight_1);
            $(_dialogList[_dialogList.length - 1]).dialog("option", "width", dWidth_1);
            $(o).find("img").attr("src", "../img/square1.png");
            $(o).attr("class", "zoom_out");
            $(".ui-dialog-content").css({ "overflow": "auto" });
        }, 500);
    }
    else {
        $(".ui-dialog-content").css({ "overflow": "hidden" });
        $(o).find("img").attr("src", "../img/squares.png");
        var dHeight_2 = _popList[_popList.length - 1].getSettings().height + 47;
        var dWidth_2 = _popList[_popList.length - 1].getSettings().width;
        $(_dialogList[_dialogList.length - 1]).dialog("widget").animate({ width: dWidth_2, height: dHeight_2 }, {
            duration: 500, step: function () {
                $(_dialogList[_dialogList.length - 1]).dialog('option', 'position', 'center');
            }
        });
        setTimeout(function () {
            $(_dialogList[_dialogList.length - 1]).dialog("option", "height", dHeight_2);
            $(_dialogList[_dialogList.length - 1]).dialog("option", "width", dWidth_2);
            $(o).attr("class", "zoom_in");
            var height = $($('.ui-dialog-content iframe')[0].contentWindow.document).height();
            var test = $(window.top.document).find('.ui-dialog-content');
            test.height(height).find("#colorbox,#cboxContent,#cboxLoadedContent,#cboxLoadedContent iframe").height(height);
        }, 500);
    }
}
function parentConnect(fn, data) {
    if (_popList.length > 0) {
        var targetDocument = _popList[_popList.length - 1].getSettings().target;
        if (targetDocument != undefined || targetDocument != null) {
            if (fn != undefined || fn != null) {
                var callbackFn = targetDocument[fn];
                if ($.isFunction(callbackFn)) {
                    return callbackFn(data);
                }
            }
        }
    }
}
function smartPopReSize(option) {
    try {
        _popList[_popList.length - 1].resize(option);
    }
    catch (e) {
    }
}
