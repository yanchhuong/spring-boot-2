$.fn.tablePaging = function (table_id, fn_getDat, callback, page, listSize, pagingSizeYn) {
    var _paging_draw_area = this;
    var _grid = table_id;
    var currentPage = page;
    var pageSize = listSize;
    var bf_pageSize = listSize;
    var currentBlock = Math.ceil(currentPage / 10);
    var flag = ""; // (N=내부에서 다음 블럭 호출 , P=내부에서 이전 블럭 호출)
    var firstPageNo = ""; // 첫 페이지 번호
    var lastPageNo = ""; // 마지막 페이지 번호
    var firstBlock = ""; // 첫 Block 번호
    var lastBlock = ""; // 끝 Block 번호 
    var moveBlockCnt = ""; // 맨앞 or 맨뒤 Block 까지 움직여야하는 페이지 수
    var paging = {
        setPaging: function (rec) {
            // 다음
            if (flag == "N") {
                if (rec.length == 0) {
                    currentBlock--;
                    common.app.showMessage('WBE6092'); //common.app.warning(new WbError("WBW1021"));
                    flag = "";
                    return false;
                }
            }
            //이전
            else if (flag == "P") {
                if (currentBlock == 0) {
                    currentBlock++;
                    common.app.showMessage('WBE6091'); //common.app.warning(new WbError("WBW1020"));
                    flag = "";
                    return false;
                }
            }
            //맨뒤
            else if (flag == "L") {
                if (Number(moveBlockCnt) == 0) {
                    common.app.showMessage('WBE6092'); //common.app.warning(new WbError("WBW1021"));
                    flag = "";
                    return false;
                }
            }
            //맨앞
            else if (flag == "F") {
                if (Number(moveBlockCnt) == 0) {
                    common.app.showMessage('WBE6091'); //common.app.warning(new WbError("WBW1020"));
                    flag = "";
                    return false;
                }
            }
            if (pagingSizeYn == "Y") {
                var background_html = "";
                background_html += "<div class='combo_box f_left' style='width:50px;'>";
                background_html += "	<a href='javascript:' name='paging_size_list' class='txt pgValue'>";
                background_html += "		<span name='page_size_default'></span>";
                background_html += "	</a>";
                background_html += "	<div class='combolist_type1' style='display:none; z-index:999;'>";
                background_html += "		<ul>";
                background_html += "			<li><a href='javascript:setPageSize(15)' class='pgSelectValue' usr-val='15'>15</a></li>";
                background_html += "			<li><a href='javascript:setPageSize(20)' class='pgSelectValue' usr-val='20'>20</a></li>";
                background_html += "			<li><a href='javascript:setPageSize(30)' class='pgSelectValue' usr-val='30'>30</a></li>";
                background_html += "			<li><a href='javascript:setPageSize(40)' class='pgSelectValue' usr-val='40'>40</a></li>";
                background_html += "			<li><a href='javascript:setPageSize(50)' class='pgSelectValue' usr-val='50'>50</a></li>";
                //background_html += "			<li><a href='javascript:setPageSize(100)' class='pgSelectValue' usr-val='100'>100</a></li>";
                background_html += "		</ul>";
                background_html += "	</div>";
                background_html += "</div>";
                background_html += "<div class=\"paging mgb10\" style=\"display: none !important;\">";
                background_html += "	<span class=\"pagingList\">";
                background_html += "		<select name=\"paging_size\" class=\"select\" style=\"width:85px;\">";
                background_html += "			<option value=\"15\">15</option>";
                background_html += "			<option value=\"20\">20</option>";
                background_html += "			<option value=\"30\">30</option>";
                background_html += "			<option value=\"40\">40</option>";
                background_html += "			<option value=\"50\">50</option>";
                //background_html += "			<option value=\"100\">100</option>";
                background_html += "		</select>";
                background_html += "	</span>";
                background_html += "	<span id=\"page_block\"></span>";
                background_html += "</div>";
                $(".n_btn_both_wrap").find(".n_paging_size").html(background_html);
                $(".n_btn_both_wrap").find(".n_paging_size").find("select[name='paging_size']").change(function () {
                    pageSize = $(this).val();
                });
            }
            var dataSize = rec.length;
            var dataBlockSize = Math.ceil(dataSize / pageSize);
            var firstPage = currentBlock * 10 - 10 + 1;
            var lastPage = currentBlock * 10;
            var blockCnt = 0;
            $(_paging_draw_area).find("#page_block > *").remove();
            // 데이터 존재 O
            if (dataSize > 0) {
                $(_paging_draw_area).children().remove();
                $(".n_btn_both_wrap").find(".n_paging_size").children().remove();
                var fprevHtml = "<a href=\"javascript:\" id=\"first_pre\"><img src=\"/img/btn/btn_paging_first.gif\" title=\"처음 페이지\" alt=\"처음 페이지\" /></a>\n";
                var prevHtml = "<a href=\"javascript:\" id=\"pre\"><img src=\"/img/btn/btn_paging_prev.gif\" title=\"이전 페이지\" alt=\"이전 페이지\" /></a>\n";
                var nextHtml = "<a href=\"javascript:\" id=\"next\"><img src=\"/img/btn/btn_paging_next.gif\" title=\"다음 페이지\" alt=\"다음 페이지\" /></a>\n";
                var lnextHtml = "<a href=\"javascript:\" id=\"last_next\"><img src=\"/img/btn/btn_paging_last.gif\" title=\"마지막 페이지\" alt=\"마지막 페이지\" /></a>";
                var pageSelectHtml = "";
                if (pagingSizeYn == "Y") {
                    pageSelectHtml = "";
                    pageSelectHtml += "<div class='combo_box f_left' style='width:50px;'>";
                    pageSelectHtml += "		<a href='javascript:' name='paging_size_list' class='txt pgValue'>";
                    pageSelectHtml += "			<span name='page_size_default'></span>";
                    pageSelectHtml += "		</a>";
                    pageSelectHtml += "		<div class='combolist_type1' style='display:none; z-index:999;'>";
                    pageSelectHtml += "			<ul>";
                    //pageSelectHtml += "				<li><a href='javascript:setPageSize(1)' class='pgSelectValue' usr-val='1'>1</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(15)' class='pgSelectValue' usr-val='15'>15</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(20)' class='pgSelectValue' usr-val='20'>20</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(30)' class='pgSelectValue' usr-val='30'>30</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(40)' class='pgSelectValue' usr-val='40'>40</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(50)' class='pgSelectValue' usr-val='50'>50</a></li>";
                    //pageSelectHtml += "				<li><a href='javascript:setPageSize(100)' class='pgSelectValue' usr-val='100'>100</a></li>";
                    pageSelectHtml += "			</ul>";
                    pageSelectHtml += "		</div>";
                    pageSelectHtml += "</div>";
                    pageSelectHtml += "<div class=\"paging mgb10\" style=\"display: none !important;\">";
                    pageSelectHtml += "		<span class=\"pagingList\">";
                    pageSelectHtml += "			<select name=\"paging_size\" class=\"select\" style=\"width:55px;\">";
                    //pageSelectHtml += "				<option value=\"1\">1</option>";
                    pageSelectHtml += "				<option value=\"15\">15</option>";
                    pageSelectHtml += "				<option value=\"20\">20</option>";
                    pageSelectHtml += "				<option value=\"30\">30</option>";
                    pageSelectHtml += "				<option value=\"40\">40</option>";
                    pageSelectHtml += "				<option value=\"50\">50</option>";
                    //pageSelectHtml += "				<option value=\"100\">100</option>";
                    pageSelectHtml += "			</select>";
                    pageSelectHtml += "		</span>";
                    pageSelectHtml += "		<span id=\"page_block\"></span>";
                    pageSelectHtml += "</div>";
                }
                $(".n_btn_both_wrap").find(".n_paging_size").append(pageSelectHtml);
                var background_html = "<div class=\"paging-wrap\">" + fprevHtml + prevHtml + "<span class=\"paging\" id=\"page_block\"></span>" + nextHtml + lnextHtml + "</div>";
                $(_paging_draw_area).append(background_html);
                $(".n_btn_both_wrap").find(".n_paging_size").find("select[name='paging_size']").val(pageSize);
                $(".n_btn_both_wrap").find(".n_paging_size").find("span[name='page_size_default']").text(pageSize);
                for (var i = firstPage; i <= lastPage; i++) {
                    var comma = (i == firstPage ? "" : " . ");
                    if (currentPage == i)
                        $(_paging_draw_area).find("#page_block").append(comma + "<a href='javascript:' class='on'>" + i + "</a>");
                    else
                        $(_paging_draw_area).find("#page_block").append(comma + "<a href='javascript:'>" + i + "</a>");
                    blockCnt++;
                    if (blockCnt == dataBlockSize) {
                        break;
                    }
                }
            }
            // 데이터 존재 X
            else {
                $(_paging_draw_area).children().remove();
                $(".n_btn_both_wrap").find(".n_paging_size").children().remove();
                /*
                const fprevHtml   = "<a style=\"cursor:pointer;\" style=\"margin-right:-4px;\" id=\"first_pre\"><img src=\"../../img_new/btn/btn_pg_first_on.gif\" title=\"첫 페이지\" /></a>";
                const prevHtml   	= "<a style=\"cursor:pointer;\" id=\"pre\"><img src=\"/img_new/btn/btn_pg_pre_on.gif\" title=\"이전 페이지\" /></a>";
                const nextHtml   	= "<a style=\"cursor:pointer;\" style=\"margin-right:-4px;\" id=\"next\"><img src=\"/img_new/btn/btn_pg_next_on.gif\" title=\"다음 페이지\" /></a>";
                const lnextHtml   = "<a style=\"cursor:pointer;\" id=\"last_next\"><img src=\"../../img_new/btn/btn_pg_last_on.gif\" title=\"마지막 페이지\" /></a>";
                */
                var fprevHtml = "";
                var prevHtml = "";
                var nextHtml = "";
                var lnextHtml = "";
                var pageSelectHtml = "";
                if (pagingSizeYn == "Y") {
                    pageSelectHtml = "";
                    pageSelectHtml += "<div class='combo_box f_left' style='width:50px;'>";
                    pageSelectHtml += "		<a href='javascript:' name='paging_size_list' class='txt pgValue'>";
                    pageSelectHtml += "			<span name='page_size_default'></span>";
                    pageSelectHtml += "		</a>";
                    pageSelectHtml += "		<div class='combolist_type1' style='display:none; z-index:999;'>";
                    pageSelectHtml += "			<ul>";
                    //pageSelectHtml += "				<li><a href='javascript:setPageSize(1)' class='pgSelectValue' usr-val='1'>1</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(15)' class='pgSelectValue' usr-val='15'>15</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(20)' class='pgSelectValue' usr-val='20'>20</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(30)' class='pgSelectValue' usr-val='30'>30</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(40)' class='pgSelectValue' usr-val='40'>40</a></li>";
                    pageSelectHtml += "				<li><a href='javascript:setPageSize(50)' class='pgSelectValue' usr-val='50'>50</a></li>";
                    //pageSelectHtml += "				<li><a href='javascript:setPageSize(100)' class='pgSelectValue' usr-val='100'>100</a></li>";
                    pageSelectHtml += "			</ul>";
                    pageSelectHtml += "		</div>";
                    pageSelectHtml += "</div>";
                    pageSelectHtml += "<div class=\"paging mgb10\" style=\"display: none !important;\">";
                    pageSelectHtml += "		<span class=\"pagingList\">";
                    pageSelectHtml += "			<select name=\"paging_size\" class=\"select\" style=\"width:85px;\">";
                    //pageSelectHtml += "				<option value=\"1\">1</option>";
                    pageSelectHtml += "				<option value=\"15\">15</option>";
                    pageSelectHtml += "				<option value=\"20\">20</option>";
                    pageSelectHtml += "				<option value=\"30\">30</option>";
                    pageSelectHtml += "				<option value=\"40\">40</option>";
                    pageSelectHtml += "				<option value=\"50\">50</option>";
                    //pageSelectHtml += "				<option value=\"100\">100</option>";
                    pageSelectHtml += "			</select>";
                    pageSelectHtml += "		</span>";
                    pageSelectHtml += "		<span id=\"page_block\"></span>";
                    pageSelectHtml += "</div>";
                }
                $(".n_btn_both_wrap").find(".n_paging_size").append(pageSelectHtml);
                var background_html = "<div class=\"paging-wrap\">" + fprevHtml + prevHtml + "<span class=\"paging\" id=\"page_block\"></span>" + nextHtml + lnextHtml + "</div>";
                $(_paging_draw_area).append(background_html);
                $(".n_btn_both_wrap").find(".n_paging_size").find("select[name='paging_size']").val(pageSize);
                $(".n_btn_both_wrap").find(".n_paging_size").find("span[name='page_size_default']").text(pageSize);
                $(_paging_draw_area).find("#page_block").append("<a href='javascript:' class='on'>1</a>");
            }
            $(_paging_draw_area).find("#page_block").find("a").click(function () {
                var pageNum = $(this).html();
                if (!isNaN(Number(pageNum))) {
                    currentPage = pageNum;
                    paging.setPaging(rec);
                }
            });
            /* list size change */
            $(".n_btn_both_wrap").find(".n_paging_size").find("select[name='paging_size']").change(function () {
                pageSize = $(this).val();
                // list size 변경시 첫페이지 첫 쪽으로 초기화 
                currentPage = 1;
                currentBlock = 1;
                if ($.isFunction(fn_getDat)) {
                    fn_getDat();
                }
            });
            /* 다음페이지 이벤트 정의 */
            $(_paging_draw_area).find(".paging-wrap").find("#next").click(function () {
                currentBlock++;
                flag = "N";
                currentPage = currentBlock * 10 - 10 + 1;
                // blockCnt1 = currentPage;
                if ($.isFunction(fn_getDat)) {
                    fn_getDat();
                }
            });
            /* 이전페이지 이벤트 정의 */
            $(_paging_draw_area).find(".paging-wrap").find("#pre").click(function () {
                currentBlock--;
                flag = "P";
                currentPage = currentBlock * 10 - 10 + 1;
                if (currentPage < 0) {
                    currentPage = 1;
                }
                if ($.isFunction(fn_getDat)) {
                    fn_getDat();
                }
            });
            /* 첫 페이지로 Click */
            $(_paging_draw_area).find(".paging-wrap").find("#first_pre").click(function () {
                flag = "F";
                // 현재 내가 있는 Block에서 첫 Block까지 몇 Block을 가야 하는가(현재 Block(currentBlock) - 첫 Block(firstBlock)) 
                moveBlockCnt = Number(currentBlock) - Number(firstBlock);
                // 현재 Block(currentBlock) - 내가 맨앞 Block으로 이동하기 위해 가야하는 Block 수(moveBlockCnt) = 목적지 Block(첫 Block)
                currentBlock = Number(currentBlock) - Number(moveBlockCnt);
                // 페이지 번호(각 Block의 첫 페이지)
                currentPage = "1";
                if ($.isFunction(fn_getDat)) {
                    fn_getDat();
                }
            });
            /* 끝 페이지로 Click */
            $(_paging_draw_area).find(".paging-wrap").find("#last_next").click(function () {
                flag = "L";
                // 현재 내가 있는 Block에서 끝 Block까지 몇 Block을 가야 하는가(끝 Block(lastBlock) - 현재 Block(currentBlock))
                moveBlockCnt = Number(lastBlock) - Number(currentBlock);
                // 현재 Block(currentBlock) + 내가 끝 Block으로 이동하기 위해 가야하는 Block 수(moveBlockCnt) = 목적지 Block(끝 Block)
                currentBlock = Number(currentBlock) + Number(moveBlockCnt);
                // 페이지 번호(각 Block의 첫 페이지)
                currentPage = (Number(lastBlock) * 10) - 9;
                if ($.isFunction(fn_getDat)) {
                    fn_getDat();
                }
            });
            /* 페이징 사이즈 리스트 열기 버튼 */
            $("a[name='paging_size_list']").click(function () {
                //$(this).next().css("display","block");
                $(this).next().slideToggle(200, "swing");
                $(this).next().focus();
            });
            if (bf_pageSize != pageSize) {
                currentPage = 1;
                currentBlock = 1;
            }
            var firstRow = ((currentPage % 10 == 0 ? 10 : currentPage % 10) * pageSize - pageSize + 1) - 1;
            var lastRow = ((currentPage % 10 == 0 ? 10 : currentPage % 10) * pageSize);
            if ($.isFunction(callback)) {
                try {
                    $("#" + table_id).find("tbody > *").remove();
                }
                catch (e) { }
                callback($("#" + table_id), rec.slice(firstRow, lastRow));
            }
            bf_pageSize = pageSize;
        },
        getTotSize: function () {
            var totSize = pageSize * 10;
            return totSize + "";
        },
        getCurrentBlock: function () {
            return currentBlock + "";
        },
        getCurrentPage: function () {
            return currentPage + "";
        },
        getListSize: function () {
            return pageSize + "";
        },
        initPage: function () {
            currentPage = 1;
            currentBlock = 1;
        },
        setTotDataSize: function (dataCnt) {
            firstPageNo = "1"; // 첫 페이지
            lastPageNo = Math.ceil(dataCnt / pageSize); // 끝 페이지
            firstBlock = "1"; // 첫 페이지 단위 번호
            lastBlock = Math.ceil(lastPageNo / 10); // 끝 페이지 단위 번호
        }
    };
    return paging;
};
function setPageSize(pagingSize) {
    var pageSize = pagingSize;
    $(".combolist_type1").css("display", "none");
    $("select[name='paging_size'] option[value=" + pageSize + "]").attr("selected", "true");
    $("span[name='page_size_default']").text(pageSize);
    $("select[name='paging_size']").change();
}
/**
 * 빈 행 만드는 함수
 * @param trCnt		: 빈 행의 개수
 * @param recLength	: rec 길이
 */
function getTempTr(colCnt, trCnt, recLength, aTrHeight) {
    var tempTd = "";
    var trHtml = "";
    var trHeight = 25;
    if (null != aTrHeight && undefined != aTrHeight) {
        trHeight = aTrHeight;
    }
    if (recLength > 0) {
        trCnt = trCnt - recLength;
    }
    else {
        //
        if (trCnt < 1)
            trCnt = 10;
        $(".paging-wrap").hide(); // 페이징 숨김
    }
    for (var j = 0; colCnt > j; j++) {
        tempTd += "<td></td>";
    }
    for (var i = 0; trCnt > i; i++) {
        trHtml += "<tr style='height:" + trHeight + "px;'>" + tempTd + "</tr>";
        // trHtml += "<tr >"+tempTd+"</tr>";
    }
    return trHtml;
}
/*export {};*/
