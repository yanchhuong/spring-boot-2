package com.heroku.model.generic;

public interface GenericEntity <E, PK> {
    PK getPk();
}
