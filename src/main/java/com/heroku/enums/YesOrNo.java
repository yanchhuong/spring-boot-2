package com.heroku.enums;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum YesOrNo implements GenericEnum<YesOrNo, String> {
    YES("Y"),
    NO("N"),
    ;
    private final String value;

    private YesOrNo(String value) {
        this.value = value;
    }

    @JsonCreator
    public static YesOrNo fromValue(String value) {
        for(YesOrNo my: YesOrNo.values()) {
            if(my.value.equals(value)) {
                return my;
            }
        }

        return null;
    }

    @JsonValue
    public String getValue() {
        return value;
    }

    public String getLabel() {
        String label = "";

        if("Y".equals(value)) label = "YES";
        else if("N".equals(value)) label = "NO";

        return label;
    }
}
