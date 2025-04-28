package com.heroku.model.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResponseData {
    private String status;

    private String code;
    private String message;

    // Constructors
    public ResponseData() {}
    public ResponseData(String status, String message, String code) {
        this.code = code;
        this.status = status;
        this.message = message;
    }
}
