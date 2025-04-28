package com.heroku.commons;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils extends org.apache.commons.lang3.StringUtils {

    private static Logger LOGGER =  LoggerFactory.getLogger(StringUtils.class);

    public static boolean isNumber(String str) {
        return str.matches("-?\\d+(\\.\\d+)?");  //match a number with optional '-' and decimal.
    }

    public static boolean isLength8(String str) {
        return str.matches("^(0x)?[0-9]{8}");  //match a number with optional '-' and decimal.
    }
    public static String forSearcDate(String str) {
        if(isLength8(str)){
            return str.substring(4,8)+ str.substring(2,4)+ str.substring(0,2);
        }
        return str ;
    }

    public static void main(String[] args) {

        String test = "fnsh_0011_003";
        String pattern = "([a-zA-Z]+\\_[0-9]+\\_[0-9]+)\\_(.*)";

        Matcher matcher = Pattern.compile(pattern).matcher(test);

        if(matcher.find()) {
            LOGGER.debug(matcher.group(1));
        }

        System.out.println("now:"+isNumber("233333554g"));
        System.out.println("now:"+isLength8("123456780"));
        System.out.println("now:"+forSearcDate("290820234"));

    }

}
