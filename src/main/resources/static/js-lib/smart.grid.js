var smart;
if (!smart)
    smart = {};
if (!smart.grid) {
    smart.grid = {
        // 그리드 공통 옵션
        getDefaultOptions: function () {
            return {
                width: "99.8%",
                //border: "0.7px solid #868686",
                border: "1px solid #999",
                imageUrl: "/img/grid/",
                font: "12px",
                autoWidth: false,
                ColHeader: {
                    height: 24,
                    reorderEnabled: true,
                    reorderSyncEnabled: true,
                    background: "#e5e5e5 repeat-x center bottom"
                    //	,classColHeader  : "grid-colHeader"
                    ,
                    resizeHandleBackground: "",
                    font: "10px",
                    headerStyle: " border-bottom: 1px solid silver; color : #637b97; ",
                    padding: "0 5 0 5"
                },
                ColDefManager: {
                    colDef: {
                        resizable: true,
                        tooltipEnabled: false,
                        width: 100,
                        sorter: "text"
                    }
                },
                ViewportManager: {
                    rowsPerPage: 15,
                    rowH: 20,
                    autoColWEnabled: true,
                    borderThickness: 1,
                    evenOddRows: true,
                    oddRowsBackground: "#F4F4F4",
                    autoHeight: false,
                    autoWidth: false,
                    padding: "0 5 0 5"
                },
                autoColWEnabled: true,
                DataManager: {},
                SelectionManager: {}
            };
        },
        getDefaultScardOption: function () {
            return {
                width: "99.8%",
                //border: "0.7px solid #868686",
                border: "1px solid #999",
                imageUrl: "/img/grid/",
                font: "12px",
                autoWidth: false,
                ColHeader: {
                    height: 30,
                    reorderEnabled: true,
                    reorderSyncEnabled: true,
                    background: "#788496 repeat-x center bottom",
                    backgroundHover: "#788496 repeat-x center bottom"
                    //	,classColHeader  : "grid-colHeader"
                    ,
                    resizeHandleBackground: "",
                    font: "10px",
                    headerStyle: " border-bottom: 1px solid #626c79; color : #ffffff; font-size:12px;",
                    padding: "0 5 0 5"
                },
                ColDefManager: {
                    colDef: {
                        resizable: true,
                        tooltipEnabled: false,
                        width: 100,
                        sorter: "text"
                    }
                },
                ViewportManager: {
                    rowsPerPage: 15,
                    rowH: 30,
                    autoColWEnabled: true,
                    borderThickness: 1,
                    evenOddRows: true,
                    oddRowsBackground: "#F4F4F4",
                    autoHeight: false,
                    autoWidth: false,
                    padding: "0 5 0 5",
                    rowStyle: " font-size:12px;"
                },
                autoColWEnabled: true,
                DataManager: {},
                SelectionManager: {}
            };
        },
    };
}
