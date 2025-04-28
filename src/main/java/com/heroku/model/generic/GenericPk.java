package com.heroku.model.generic;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.heroku.model.generic.GenericJBean;

public abstract class GenericPk<E> extends GenericJBean<E> {
    @JsonIgnore
    public abstract String getDynamic();

    @JsonIgnore
    public abstract String getDynamic(String prefix);

    public GenericPk() {
        super();
    }

}
