package com.heroku.commons;

import com.heroku.config.Application;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class DateTimeUtils {

    private static Logger LOGGER =  LoggerFactory.getLogger(Application.class);

    private static final String WB_PATTERN_DATE8 = "yyyyMMdd";
    private static final String WB_PATTERN_DTM12 = "yyyyMMddHHmm";
    private static final String WB_PATTERN_DTM14 = "yyyyMMddHHmmss";
    private static final String WB_PATTERN_TIME6 = "HHmmss";
    private static final String WB_PATTERN_TIME4 = "HHmm";
    private static final String WB_PATTERN_YYYYMM = "yyyyMM";
    private static final String WB_PATTERN_YYMM = "yyMM";
    private static final String WB_PATTERN_YYYY = "yyyy";
    private static final String WB_PATTERN_MM = "MM";
    private static final String WB_PATTERN_DD = "dd";
   public  static DateFormat FORMATTER_DATE8 = new SimpleDateFormat(WB_PATTERN_DATE8);
    public  static DateFormat FORMATTER_DTM12 = new SimpleDateFormat(WB_PATTERN_DTM12);
    public  static DateFormat FORMATTER_DTM14 = new SimpleDateFormat(WB_PATTERN_DTM14);
    public  static DateFormat FORMATTER_TIME6 = new SimpleDateFormat(WB_PATTERN_TIME6);
    public  static DateFormat FORMATTER_TIME4 = new SimpleDateFormat(WB_PATTERN_TIME4);
    public  static DateFormat FORMATTER_YYYYMM = new SimpleDateFormat(WB_PATTERN_YYYYMM);
    public  static DateFormat FORMATTER_YYMM = new SimpleDateFormat(WB_PATTERN_YYMM);
    public  static DateFormat FORMATTER_YYYY = new SimpleDateFormat(WB_PATTERN_YYYY);

    public  static DateFormat FORMATTER_MM = new SimpleDateFormat(WB_PATTERN_MM);
    public  static DateFormat FORMATTER_DD = new SimpleDateFormat(WB_PATTERN_DD);


}
