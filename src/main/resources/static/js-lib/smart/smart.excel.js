"use strict";
$(document).ready(function () {
    try {
        var excelDownloadHtml = "<div style='display:none' id='_jexGridExcelDown'>";
        excelDownloadHtml += "<form method='post' enctype='multipart/form-data' name='_jexGridDownloadForm' id='_jexGridDownloadForm' action='/view/jexGrid/file/downloadProc.jsp' target='_jexGridDownloadIfrm'>";
        excelDownloadHtml += "<textarea  name='json' id='json'></textarea>";
        excelDownloadHtml += "</form>";
        excelDownloadHtml += "<iframe name='_jexGridDownloadIfrm' id='_jexGridDownloadIfrm' style='width:0px;height:0px;display:none'/>";
        excelDownloadHtml += "</div>";
        $("body").append(excelDownloadHtml);
    }
    catch (e) {
    }
    ;
});
function _excelDownload(downGrid, title, header, subHeader, footer) {
    var orgGrid = downGrid;
    var jgridDownload = {};
    jgridDownload.fileTitle = {
        title: jexjs.null2Void(title, ""),
        details: [],
        header: header,
        subHeader: subHeader
    };
    if (footer) {
        jgridDownload.footer = footer;
    }
    else {
        jgridDownload.footer = [];
    }
    if (!!orgGrid.fileTitle) {
        jgridDownload.fileTitle.title = orgGrid.fileTitle.title;
        for (var key in orgGrid.fileTitle.details) {
            if (!!orgGrid.fileTitle.details[key].key) {
                jgridDownload.fileTitle.details.push({
                    key: orgGrid.fileTitle.details[key].key,
                    value: orgGrid.fileTitle.details[key].value
                });
            }
        }
    }
    var _datalist = orgGrid.dataMgr.datalist;
    var _datalistLength = _datalist.length;
    if (_datalist.length == 0 && (title.indexOf('_호봉_') == -1)) {
        _v2common.app.showMessage("WBE1036");
        return false;
    }
    var orgColDef = orgGrid._origColDefs;
    var _colDefList = [];
    for (var i = 0; i < orgColDef.length; i++) {
        if (orgColDef[i].key == "checkbox" || orgColDef[i].hidden) {
            continue;
        }
        _colDefList.push({
            gridunqid: String(i),
            name: orgColDef[i].name,
            key: orgColDef[i].key,
            width: orgColDef[i].width,
            sumRenderer: !!orgColDef[i].sumRenderer ? true : false,
            renderer: orgColDef[i].renderer,
            excelFormat: orgColDef[i].excelFormat,
            parent: orgColDef[i].parent,
            startParentColMerge: orgColDef[i].startParentColMerge,
            endParentColMerge: orgColDef[i].endParentColMerge,
            grand: orgColDef[i].grand,
            startGrandColMerge: orgColDef[i].startGrandColMerge,
            endGrandColMerge: orgColDef[i].endGrandColMerge,
            rowMerge: orgColDef[i].rowMerge
        });
    }
    var _colDefLength = _colDefList.length;
    var _saveDatalist = [];
    var _saveDatarow;
    var pattern = /(<([^>])>)/gi;
    for (var i = 0; i < _datalistLength; i++) {
        _saveDatarow = {};
        for (var j = 0; j < _colDefLength; j++) {
            var _cellValue = void 0;
            if (!!_colDefList[j].renderer) {
                try {
                    var tempValue = _datalist[i][_colDefList[j].key];
                    if (tempValue == null || tempValue == undefined || tempValue == "" || tempValue == "undefined") {
                        tempValue = "";
                    }
                    _cellValue = _colDefList[j].renderer(tempValue, i, j, _datalist[i], _colDefList[j]);
                    if (_cellValue == null || _cellValue == undefined || _cellValue == "" || _cellValue == "undefined") {
                        _cellValue = "";
                    }
                    else {
                        if (typeof _cellValue == "string") {
                            _cellValue = _cellValue.replace(pattern, "").replace(/&nbsp;/ig, " ");
                        }
                    }
                }
                catch (e) {
                    _cellValue = "";
                }
            }
            else {
                _cellValue = _datalist[i][_colDefList[j].key];
                if (_colDefList[j].name == "")
                    _colDefList[j].name = "메모";
            }
            if (_colDefList[j].excelFormat == "int") {
                if ((typeof _cellValue) == "string") {
                    _cellValue = parseInt(_cellValue.replace(/,/g, "").replace("\\(", "").replace("\\)", ""));
                }
            }
            _saveDatarow["A" + j] = _cellValue == undefined ? "" : _cellValue;
            if (_datalist[i].dataSumRenderer !== undefined) {
                _saveDatarow["dataSumRenderer"] = _datalist[i].dataSumRenderer == undefined ? false : _datalist[i].dataSumRenderer;
            }
        }
        _saveDatalist.push(_saveDatarow);
    }
    var result = {
        colDef: _colDefList,
        data: _saveDatalist,
        title: jgridDownload.fileTitle,
        footer: jgridDownload.footer
    };
    $("#_jexGridDownloadForm").find("#json").val(encodeURI(JSON.stringify(result)));
    document.getElementById("_jexGridDownloadForm").submit();
}
;
