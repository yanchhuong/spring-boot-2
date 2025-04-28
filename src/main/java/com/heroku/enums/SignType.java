package com.heroku.enums;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum SignType implements GenericEnum<YesOrNo, String> {
    TYPE_GG("G"),
    TYPE_FB("F"),
    TYPE_NOR("N"),
    ;
    private final String value;

    private SignType(String value) {
        this.value = value;
    }

    @JsonCreator
    public static SignType fromValue(String value) {
        for(SignType my: SignType.values()) {
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
