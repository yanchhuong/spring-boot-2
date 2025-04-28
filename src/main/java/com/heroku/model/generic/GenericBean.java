package com.heroku.model.generic;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.util.HashSet;
import java.util.Set;

public abstract class GenericBean<T> {

    // test

    public static final String ETC_ITEM_CD = "0000000000";
    public static final String ETC_USAG_CD = "99999999999999999999";
    public static final String ETC_TRCO_KEY = "99999999999999999999";
    public static final String BLTB_CD_APPR = "000000000000000";

    // like code (alphanumeric, no whitespaces)
    public static final String BANK_CD_PATTERN = "^[A-Z0-9]{1,20}$";
    public static final String ACCT_NO_PATTERN = "^[A-Z0-9]{1,100}$";
    public static final String CHEQ_NUM_PATTERN = "^[A-Z0-9]{1,100}$";

    // like code (no whitespaces)
//    public static final String TAX_ID_PATTERN = "^(E|K|L)[0-9]{3}(\\-|)[0-9]{8}$";
    public static final String TAX_ID_PATTERN = "^(.?){0,40}$";
    public static final String BIZ_KEY_PATTERN = "^[\\S\\d]{1,20}$";
    public static final String DOC_ID_PATTERN = "^(.?){0,50}$";
    //    public static final String ITEM_CD_PATTERN = "^[\\S\\d]{1,10}$";
    public static final String ITEM_CD_PATTERN = "^[a-zA-Z0-9_\\-\\.]*$";
    public static final String DOC_NO_PATTERN = "^[\\S\\d]{1,50}$";
    public static final String WEB_SVC_ID_PATTERN = "^[\\S\\d]{1,50}$";
    public static final String REF_NO_PATTERN = "^[\\S\\d]{1,100}$";

    // like code (digit, fixed length)
    public static final String GRP_ICON_PATTERN = "^[0-9]{10}$";

    // like code (numeric)
    public static final String SEQ_NO= "^[0-9]{1,10}$";
    public static final String ACCT_SEQ_NO_PATTERN = "^[0-9]{1,20}$";
    public static final String PRJT_NO_PATTERN = "^[0-9]{1,20}$";
    //    public static final String USAG_CD_PATTERN = "[0-9]{10}";
    public static final String USAG_CD_PATTERN = "^([0-9]{10}|"+ETC_USAG_CD+")$";
    public static final String TRCO_KEY_PATTERN = "^[0-9]{1,20}$";
    public static final String FILE_ID_PATTERN = "^[0-9]{1,20}$";

    // with specific format
//    public static final String CLPH_NO_PATTERN = "^(([\\+]{1}[0-9]{1,3}[\\ ]{1}[0-9]{1,2}[\\ ]{1}[0-9]{4}[\\ ]{1}[0-9]{4})|([0]{1}[0-9]{1}[\\ ]{1}[0-9]{4}[\\ ]{1}[0-9]{4})|([0]{1}[0-9]{1}[\\-]{1}[0-9]{4}[\\-]{1}[0-9]{4})|([\\(]{1}[0]{1}[0-9]{1}[\\)]{1}[\\ ]{1}[0-9]{4}([\\ ]|[\\-]){1}[0-9]{4})|([0-9]{4}([\\ ]|[\\-])?[0-9]{4})|([0]{1}[0-9]{3}[\\ ]{1}[0-9]{3}[\\ ]{1}[0-9]{3})|([0]{1}[0-9]{9})|([\\(]{1}[0-9]{3}[\\)]{1}[\\ ]{1}[0-9]{3}[\\-]{1}[0-9]{4})|([0-9]{3}([\\/]|[\\-]){1}[0-9]{3}[\\-]{1}[0-9]{4})|([1]{1}[\\-]?[0-9]{3}([\\/]|[\\-]){1}[0-9]{3}[\\-]{1}[0-9]{4})|([1]{1}[0-9]{9}[0-9]?)|([0-9]{3}[\\.]{1}[0-9]{3}[\\.]{1}[0-9]{4})|([\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}([\\.]|[\\-]){1}[0-9]{4}(([\\ ]?(x|ext|extension)?)([\\ ]?[0-9]{3,4}))?)|([1]{1}[\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}([\\-]){1}[0-9]{4})|([\\+]{1}[1]{1}[\\ ]{1}[0-9]{3}[\\.]{1}[0-9]{3}[\\-]{1}[0-9]{4})|([\\+]{1}[1]{1}[\\ ]?[\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}[\\-]{1}[0-9]{4}))$";
//    public static final String TEL_NO_PATTERN = "^(([\\+]{1}[0-9]{1,3}[\\ ]{1}[0-9]{1,2}[\\ ]{1}[0-9]{4}[\\ ]{1}[0-9]{4})|([0]{1}[0-9]{1}[\\ ]{1}[0-9]{4}[\\ ]{1}[0-9]{4})|([0]{1}[0-9]{1}[\\-]{1}[0-9]{4}[\\-]{1}[0-9]{4})|([\\(]{1}[0]{1}[0-9]{1}[\\)]{1}[\\ ]{1}[0-9]{4}([\\ ]|[\\-]){1}[0-9]{4})|([0-9]{4}([\\ ]|[\\-])?[0-9]{4})|([0]{1}[0-9]{3}[\\ ]{1}[0-9]{3}[\\ ]{1}[0-9]{3})|([0]{1}[0-9]{9})|([\\(]{1}[0-9]{3}[\\)]{1}[\\ ]{1}[0-9]{3}[\\-]{1}[0-9]{4})|([0-9]{3}([\\/]|[\\-]){1}[0-9]{3}[\\-]{1}[0-9]{4})|([1]{1}[\\-]?[0-9]{3}([\\/]|[\\-]){1}[0-9]{3}[\\-]{1}[0-9]{4})|([1]{1}[0-9]{9}[0-9]?)|([0-9]{3}[\\.]{1}[0-9]{3}[\\.]{1}[0-9]{4})|([\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}([\\.]|[\\-]){1}[0-9]{4}(([\\ ]?(x|ext|extension)?)([\\ ]?[0-9]{3,4}))?)|([1]{1}[\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}([\\-]){1}[0-9]{4})|([\\+]{1}[1]{1}[\\ ]{1}[0-9]{3}[\\.]{1}[0-9]{3}[\\-]{1}[0-9]{4})|([\\+]{1}[1]{1}[\\ ]?[\\(]{1}[0-9]{3}[\\)]{1}[0-9]{3}[\\-]{1}[0-9]{4}))$";
//    public static final String CLPH_NO_PATTERN = "^[0-9-+ ]{1,30}$";
    public static final String CLPH_NO_PATTERN = "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\\s\\./0-9]*$";
    public static final String TEL_NO_PATTERN = CLPH_NO_PATTERN;
    public static final String EMPL_NO_PATTERN = "^[0-9]{8}\\_[0-9]{3}$";
    //    public static final String EMAIL_PATTERN = "^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    public static final String EMAIL_PATTERN = "^.+@.+\\..+$";
    public static final String USER_ID_PATTERN = "^[\\S\\d@]{1,100}$";

    // like text
    public static final String COMPANY_NAME_PATTERN = "^(.?){0,200}$";
    public static final String ITEM_NM_PATTERN = "^(.?){0,200}$";
    public static final String USER_NM_PATTERN = "^(.?){0,100}$";
    public static final String FILE_NM_PATTERN = "^(.?){0,100}$";     //TODO: fine proper pattern and apply
    public static final String FILE_PATH_PATTERN = "^(.?){0,200}$";     //TODO: fine proper pattern and apply

    // etc
    public static final String DOC_TYPE_PATTERN = "^(I|B|E|C|Q|A|R)$";
    public static final String NOT_BLANK_PATTERN = ".*\\S.*";
    public static final String NO_WHITESPACE_PATTERN = "[^\\s]*";
    public static final String USER_PW_PATTERN = "^[^\\s]{0,50}$";


}


