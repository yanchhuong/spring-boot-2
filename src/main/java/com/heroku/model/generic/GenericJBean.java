package com.heroku.model.generic;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.heroku.model.generic.GenericBean;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public abstract class GenericJBean<T> extends GenericBean<T> {
    public abstract void copyFrom(HttpServletRequest request);

    @JsonIgnore
    public Map<String, String> fieldsToUpdateMap;

    public GenericJBean() {
        super();
        fieldsToUpdateMap = new HashMap<>();
    }
}
