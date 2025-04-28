package com.heroku.enums;

public interface GenericEnum<T, E> {
    E getValue();
    String getLabel();
}
