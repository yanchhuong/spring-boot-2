"use strict";
var tmsComm = {
    createProgressBar: function (json) {
        $("#progressbar").remove();
        $("body").append("<div id=\"progressbar\" style=\"display: none;z-index: 1000008;top: 50%;margin-top: -43px;\"><div class=\"progress-label\"><img id='jexLoadingImg' alt='waiting please' src='/img/loading/ajax-loading.gif' ></div></div>");
        try {
            if (typeof (parent) != undefined) {
                parent.$.blockUI({
                    message: $("#progressbar"),
                    baseZ: 1000008
                });
            }
            else {
                $.blockUI({
                    message: $("#progressbar"),
                    baseZ: 1000008
                });
            }
        }
        catch (e) { }
        ;
        if (!json)
            json = {};
    },
    destroyProgressBar: function () {
        try {
            if (typeof (parent) != undefined) {
                setTimeout(function () {
                  parent.$.unblockUI();
                    $("#progressbar").remove();
                }, 500);
            }
            else {
                setTimeout(function () {
                    $.unblockUI();
                    $("#progressbar").remove();
                }, 50);
            }
        }
        catch (e) { }
        ;
    },
};
