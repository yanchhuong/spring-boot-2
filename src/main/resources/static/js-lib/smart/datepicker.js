"use strict";
var datePicker = {
    fromTo: ["From", "To"],
    type: 0,
    today: new Date(),
    fromDate: new Date(),
    toDate: new Date(),
    oneDayInMillisec: 1000 * 60 * 60 * 24,
    minDate: new Date(),
    maxDate: new Date(),
    startMonth: 0,
    startYear: 0,
    fnCreateElementWithClassAndAppend: function (selector, typeOfElement, className) {
        return $(selector).append($(document.createElement(typeOfElement)).addClass(className));
    },
    getLastDate: function (year, month) {
        return new Date(year, month, 0).getDate();
    },
    fillZero: function (number) {
        if (number < 10) {
            return "0" + number;
        }
        else {
            return number;
        }
    },
    _printFromDate: function (fromYear, fromMonth, fromDate) {
        $("#yearFrom").text(fromYear);
        $("#dateFrom .month").text(this.fillZero((fromMonth)));
        $("#dateFrom .day").text(this.fillZero(fromDate));
    },
    printFromDate: function () {
        $("#yearFrom").text(datePicker.fromDate.getFullYear());
        $("#dateFrom .month").text(datePicker.fillZero((datePicker.fromDate.getMonth() + 1)));
        $("#dateFrom .day").text(datePicker.fillZero(datePicker.fromDate.getDate()));
    },
    _printToDate: function (toYear, toMonth, toDate) {
        $("#yearTo").text(toYear);
        $("#dateTo .month").text(this.fillZero((toMonth)));
        $("#dateTo .day").text(this.fillZero(toDate));
    },
    printToDate: function () {
        $("#yearTo").text(datePicker.toDate.getFullYear());
        $("#dateTo .month").text(datePicker.fillZero((datePicker.toDate.getMonth() + 1)));
        $("#dateTo .day").text(datePicker.fillZero(datePicker.toDate.getDate()));
    },
    _printDate: function (fromYear, fromMonth, fromDate, toYear, toMonth, toDate) {
        this._printFromDate(fromYear, fromMonth, fromDate);
        this._printToDate(toYear, toMonth, toDate);
    },
    printDate: function () {
        datePicker.printFromDate();
        datePicker.printToDate();
    },
    showDate: function () {
        var fromMonth = -1;
        var toMonth = -1;
        $(".monthSelector .msTable td").each(function (index) {
            if ($(this).hasClass('ui-selecting') || $(this).hasClass('ui-selected')) {
                if (fromMonth == -1) {
                    fromMonth = datePicker.startMonth + index - 1;
                }
                toMonth = datePicker.startMonth + index - 1;
            }
        });
        if (fromMonth != -1) {
            if ((datePicker.fromDate.getMonth() < datePicker.startMonth - 1) && fromMonth >= datePicker.startMonth - 1) {
                datePicker.fromDate.setFullYear(this.fromDate.getFullYear() - 1, fromMonth, 1);
            }
            else if (datePicker.fromDate.getMonth() >= datePicker.startMonth - 1 && fromMonth < datePicker.startMonth - 1) {
                datePicker.fromDate.setFullYear(datePicker.fromDate.getFullYear() + 1, fromMonth, 1);
            }
            else {
                datePicker.fromDate.setFullYear(datePicker.fromDate.getFullYear(), fromMonth, 1);
            }
        }
        if (toMonth != -1) {
            if ((datePicker.toDate.getMonth() < datePicker.startMonth - 1) && toMonth >= datePicker.startMonth - 1) {
                datePicker.toDate.setFullYear(datePicker.toDate.getFullYear() - 1, toMonth, datePicker.getLastDate(datePicker.toDate.getFullYear() - 1, toMonth + 1));
            }
            else if (datePicker.toDate.getMonth() >= datePicker.startMonth - 1 && toMonth < datePicker.startMonth - 1) {
                datePicker.toDate.setFullYear(datePicker.toDate.getFullYear() + 1, toMonth, datePicker.getLastDate(datePicker.toDate.getFullYear() + 1, toMonth + 1));
            }
            else {
                datePicker.toDate.setFullYear(datePicker.toDate.getFullYear(), toMonth, datePicker.getLastDate(datePicker.toDate.getFullYear(), toMonth + 1));
            }
        }
        datePicker.printDate();
    },
    setStartMonth: function (start) {
        $("div.dpYearDisplay").addClass("type" + start);
        var curMonth = start;
        $(".monthSelector .msTable td").each(function (index) {
            if (curMonth > 12) {
                curMonth = 1;
            }
            if (curMonth > 9) {
                $(this).addClass("long");
            }
            if (curMonth == 1) {
                $(this).addClass("first");
            }
            if (datePicker.type == 1) {
                $(this).text(curMonth++);
            }
            else if (datePicker.type == 2) {
                $(this).addClass('month_' + curMonth++);
            }
        });
    },
    fnShowCalendar: function (fromTo) {
        if (fromTo == "To") {
            if ($("#dateFrom").hasClass('selected')) {
                datePicker.fnHideCalendar("From");
            }
            $("#dpCal" + fromTo).datepicker('setDate', datePicker.toDate);
        }
        else if (fromTo == "From") {
            if ($("#dateTo").hasClass('selected')) {
                datePicker.fnHideCalendar("To");
            }
            $("#dpCal" + fromTo).datepicker('setDate', datePicker.fromDate);
        }
        $("#date" + fromTo).addClass('selected');
        var position = $("#date" + fromTo).position();
        $("#dpCal" + fromTo).fadeIn(300);
        $("#dpCal" + fromTo).css("left", position.left - 50);
    },
    fnHideCalendar: function (fromTo) {
        $("#date" + fromTo).removeClass('selected');
        $("#dpCal" + fromTo).fadeOut(300);
    },
    fnToggleCalendar: function (event) {
        if ($("#date" + event.data.fromTo).hasClass('selected')) {
            datePicker.fnHideCalendar(event.data.fromTo);
        }
        else {
            datePicker.fnShowCalendar(event.data.fromTo);
        }
    },
    getFromDate: function () {
        return datePicker.fromDate;
    },
    getToDate: function () {
        return datePicker.toDate;
    },
    fnRequestData: function () {
    },
    fnSetMonthSelector: function () {
        var startSelected = datePicker.fromDate.getMonth() + 1 - datePicker.startMonth;
        var endSelected = datePicker.toDate.getMonth() + 1 - datePicker.startMonth;
        if (startSelected < 0) {
            startSelected += 12;
        }
        if (endSelected < 0) {
            endSelected += 12;
        }
        for (var i = 0; i < 12; i++) {
            if (startSelected <= i && i <= endSelected) {
                $('.monthSelector .msTable tr td:eq(' + i + ')').addClass('ui-selected');
            }
            else {
                $('.monthSelector .msTable tr td:eq(' + i + ')').removeClass('ui-selected');
            }
        }
    },
    createHtml: function (type) {
        datePicker.type = type;
        var datePickerDiv;
        switch (datePicker.type) {
            case 1: {
                datePickerDiv = "div.datePicker";
                break;
            }
            case 2: {
                datePickerDiv = "div.datePicker2";
                break;
            }
        }
        if (datePickerDiv) {
            this.fnCreateElementWithClassAndAppend(datePickerDiv, 'div', "wrap");
            this.fnCreateElementWithClassAndAppend(datePickerDiv + " .wrap", "div", "datePickerWrap");
        }
        if (datePicker.type == 2) {
            $("div.datePickerWrap").attr("id", "dp2_datePickerWrap");
        }
        this.fnCreateElementWithClassAndAppend("div.datePickerWrap", "div", "pickerWrap");
        this.fnCreateElementWithClassAndAppend("div.pickerWrap", "div", "dateWrap");
        $("div.dateWrap").addClass("group");
        this.fnCreateElementWithClassAndAppend("div .dateWrap", "div", "dateBoxWrap");
        this.fnCreateElementWithClassAndAppend("div.dateBoxWrap", "span", "dateYear");
        this.fnCreateElementWithClassAndAppend("div.dateBoxWrap", "div", "dateBox");
        this.fnCreateElementWithClassAndAppend("div.dateBox", "span", "month");
        this.fnCreateElementWithClassAndAppend("div.dateBox", "span", "day");
        this.fnCreateElementWithClassAndAppend("div .dateWrap", "span", "dbSeparator");
        $(".dbSeparator").html("&ndash;");
        $(".dateBoxWrap").clone().appendTo(".dateWrap");
        $(".dateBoxWrap").each(function (index) {
            $(this).find("span.dateYear").attr("id", "year" + datePicker.fromTo[index]);
            $(this).find("div.dateBox").attr("id", "date" + datePicker.fromTo[index]);
        });
        this.fnCreateElementWithClassAndAppend("div.pickerWrap", "div", "monthSelector");
        this.fnCreateElementWithClassAndAppend("div.monthSelector", "table", "msTable");
        $("table.msTable").append($(document.createElement('tr')));
        for (var i = 0; i < 12; i++) {
            $(".msTable tr").append($(document.createElement('td')));
        }
        this.fnCreateElementWithClassAndAppend("div.pickerWrap", "div", "dpYearDisplay");
        switch (datePicker.type) {
            case 1: {
                this.fnCreateElementWithClassAndAppend("div.dpYearDisplay", "div", "yearDisplay");
                this.fnCreateElementWithClassAndAppend("div.yearDisplay", "span", "prev");
                this.fnCreateElementWithClassAndAppend("div.yearDisplay", "span", "next");
                this.fnCreateElementWithClassAndAppend("div.dpYearDisplay", "button", "toggleYearChanger");
                this.fnCreateElementWithClassAndAppend("div.datePickerWrap", "div", "yearChangerWrap");
                this.fnCreateElementWithClassAndAppend("div.yearChangerWrap", "div", "yearSelect");
                $("div.yearSelect").append($(document.createElement('ol')));
                for (var i = 0; i < 4; i++) {
                    $("div.yearSelect ol").append($(document.createElement('li')).html('<a href="#"><strong>제' + (i + 1) + '기</strong><span>2005/04/01 &ndash; 2006/03/31</span></a>'));
                }
                this.fnCreateElementWithClassAndAppend("div.yearChangerWrap", "div", "bottomBox");
                this.fnCreateElementWithClassAndAppend("div.bottomBox", "button", "backToDatePicker");
                $(".backToDatePicker").html("취소");
                break;
            }
            case 2: {
                this.fnCreateElementWithClassAndAppend("div.dpYearDisplay", "button", "toggleYearChanger");
                $("div.dpYearDisplay .toggleYearChanger").attr("id", "dp2_toggleYearChanger");
                this.fnCreateElementWithClassAndAppend("div.pickerWrap", "div", "quickChanger");
                $("div.quickChanger").append('<span>이번달</span><span>이번분기</span><span>전체</span>');
                this.fnCreateElementWithClassAndAppend("#dp2_datePickerWrap", "div", "yearChangerWrap");
                this.fnCreateElementWithClassAndAppend("#dp2_datePickerWrap .yearChangerWrap", "div", "yearSelect");
                $("#dp2_datePickerWrap .yearSelect").attr("id", "dp2_yearSelect");
                for (var i = 0; i < 20; i++) {
                    if (i % 5 == 0) {
                        $("#dp2_yearSelect").append('<ol></ol>');
                    }
                    $("#dp2_yearSelect ol:last").append('<li><a href="#"><strong>제' + (i + 1) + '기</strong><span>2005/04/01 &ndash; 2006/03/31</span></a></li>');
                }
                this.fnCreateElementWithClassAndAppend("div.yearChangerWrap", "div", "bottomBox");
                $("div.bottomBox").append('<span class=\"btnPrev\" id=\"dp2_btnPrev\"><button></button></span>');
                $("div.bottomBox").append('<span class=\"btnNext\" id=\"dp2_btnNext\"><button></button></span>');
                $("div.bottomBox").append('<button class=\"backToDatePicker\" id=\"dp2_backToDatePicker\">취소</button>');
                break;
            }
        }
        if (datePickerDiv) {
            this.fnCreateElementWithClassAndAppend(datePickerDiv, "div", "dpCalendarOverlay");
            this.fnCreateElementWithClassAndAppend(datePickerDiv, "div", "dpCalendarOverlay");
        }
        $(datePickerDiv + " .dpCalendarOverlay").each(function (index) {
            $(this).attr("id", "dpCal" + datePicker.fromTo[index]);
        });
    },
    init: function (startYear, startMonth, onselectFunc) {
        datePicker.startYear = startYear;
        datePicker.startMonth = startMonth;
        datePicker.setStartMonth(datePicker.startMonth);
        datePicker.fromDate = new Date(datePicker.today.getFullYear(), datePicker.today.getMonth(), datePicker.today.getDate() - 6);
        datePicker.toDate = new Date(datePicker.today.getFullYear(), datePicker.today.getMonth(), datePicker.today.getDate());
        datePicker.printDate();
        var currentMonthIndex = datePicker.today.getMonth() + 1 - startMonth + (datePicker.today.getMonth() + 1 >= startMonth ? 0 : 12);
        $('.monthSelector .msTable tr td:eq(' + currentMonthIndex + ')').addClass('ui-selected');
        if (datePicker.fromDate.getMonth() + 1 < startMonth) {
            datePicker.minDate = new Date(datePicker.fromDate.getFullYear() - 1, startMonth - 1, 1);
        }
        else {
            datePicker.minDate = new Date(datePicker.fromDate.getFullYear(), startMonth - 1, 1);
        }
        var dpDefaultSetting = {
            showOtherMonths: true,
            selectOtherMonths: true,
            changeYear: true,
            changeMonth: true,
            showOn: "button",
            buttonImage: "/smart/img/ico/ico_calendar.png",
            buttonImageOnly: true,
            dateFormat: "yy-mm-dd"
        };
        $.datepicker.setDefaults(dpDefaultSetting, $.datepicker.regional["ko"]);
        var args = [], i;
        i = arguments.length - 1;
        while (i >= 3) {
            args[i - 3] = arguments[i];
            i--;
        }
        $("#dpCalFrom").datepicker({
            onSelect: function (dateText, inst) {
                datePicker.fnHideCalendar("From");
                datePicker.fromDate = $(this).datepicker('getDate');
                datePicker.printDate();
                datePicker.fnSetMonthSelector();
                if (onselectFunc) {
                    onselectFunc.apply(this, args);
                }
            }
        });
        $("#dpCalTo").datepicker({
            onSelect: function (dateText, inst) {
                datePicker.fnHideCalendar("To");
                datePicker.toDate = $(this).datepicker('getDate');
                datePicker.printToDate();
                datePicker.fnSetMonthSelector();
                if (onselectFunc) {
                    onselectFunc.apply(this, args);
                }
            }
        });
        $("#dateTo, #yearTo").bind('click', {
            fromTo: "To"
        }, function (event) {
            datePicker.fnToggleCalendar(event);
            event.stopPropagation();
        });
        $("#dateFrom, #yearFrom").bind('click', {
            fromTo: "From"
        }, function (event) {
            datePicker.fnToggleCalendar(event);
            event.stopPropagation();
        });
        $(document).click(function () {
            if ($("#dateFrom").hasClass('selected')) {
                datePicker.fnHideCalendar("From");
            }
            else if ($("#dateTo").hasClass('selected')) {
                datePicker.fnHideCalendar("To");
            }
        });
        $("#dpCalTo").click(function () {
            return false;
        });
        $("#dpCalFrom").click(function () {
            return false;
        });
        $(".monthSelector .msTable tr").selectable();
        $(".monthSelector").bind("selectableselecting selectableunselecting", datePicker.showDate);
        $(".monthSelector").bind("selectablestop", function () {
            datePicker.showDate();
            datePicker.fnRequestData();
        });
        var animationAmount;
        switch (datePicker.type) {
            case 1: {
                animationAmount = 110;
                break;
            }
            case 2: {
                animationAmount = 90;
                break;
            }
        }
        $("button.toggleYearChanger").click(function () {
            $("div.datePickerWrap").animate({
                "top": "-=" + animationAmount + "px"
            }, "fast");
        });
        $("button.backToDatePicker").click(function () {
            $("div.datePickerWrap").animate({
                "top": "+=" + animationAmount + "px"
            }, "fast");
        });
        $("div.yearSelect").click(function () {
            setTimeout('$("div.datePickerWrap").animate({"top": "+=' + animationAmount + 'px"}, "fast")', 300);
        });
        $("div.yearSelect ol li").click(function () {
            $(this).siblings().removeClass('selected');
            $(this).addClass('selected');
        });
        $(".yearDisplay .prev").text(2010);
        $(".yearDisplay .next").text(2011);
        $(".toggleYearChanger").text(1);
        var dp2MaxIndex = 4;
        var dp2Index = 2;
        setMoverPosition();
        setMoverDisplay();
        function setMoverPosition() {
            var endValue = "-=" + Math.abs((dp2Index - 1) * 548) + "px";
            $("#dp2_yearSelect").animate({
                "margin-left": endValue
            }, "fast");
        }
        function setMoverDisplay() {
            $("#dp2_btnPrev>button").css("display", "block");
            $("#dp2_btnNext>button").css("display", "block");
            if (dp2Index == 1) {
                $("#dp2_btnPrev>button").css("display", "none");
            }
            else if (dp2Index == dp2MaxIndex) {
                $("#dp2_btnNext>button").css("display", "none");
            }
        }
        $("#dp2_btnPrev>button").click(function () {
            if (dp2Index > 1) {
                dp2Index--;
                $("#dp2_yearSelect").animate({
                    "margin-left": "+=548px"
                }, "fast");
            }
            setMoverDisplay();
        });
        $("#dp2_btnNext>button").click(function () {
            if (dp2Index < dp2MaxIndex) {
                dp2Index++;
                $("#dp2_yearSelect").animate({
                    "margin-left": "-=548px"
                }, "fast");
            }
            setMoverDisplay();
        });
    },
    setDate: function (from, to) {
        datePicker.fromDate = from;
        datePicker.toDate = to;
        datePicker.printDate();
        datePicker.fnSetMonthSelector();
    },
    setCalendar: function (selector, date) {
        $(selector).datepicker({
            showOn: "button",
            buttonImage: "/img/ico/ico_calendar.png",
            buttonImageOnly: true,
            dateFormat: "yy-mm-dd"
        });
        if (!jex.isNull(date)) {
            $(selector).val(date);
        }
    },
    setMonthpicker: function (selector, date) {
        $(selector).datepicker({
            showOn: "button",
            buttonImage: "/banknote/img/ico/ico_calendar.png",
            buttonImageOnly: true,
            showButtonPanel: true,
            dateFormat: "yy-mm",
            defaultDate: new Date(Number(date.substring(0, 4)), Number(date.substring(5, 7)) - 1),
            onClose: function () {
                var iMonth = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var iYear = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).datepicker("option", "defaultDate", new Date(Number(iYear), Number(iMonth), 1));
                var nMonth = (parseInt(iMonth) + 1);
                $(selector).val(iYear + "-" + (nMonth < 10 ? "0" + nMonth : nMonth));
            },
        });
        if (!jex.isNull(date)) {
            $(selector).val(date);
        }
    }
};
