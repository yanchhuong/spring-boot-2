package com.heroku.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.heroku.commons.StringUtils;
import com.heroku.model.generic.GenericPk;

import javax.persistence.Embeddable;
import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
@Embeddable
public class UserInfmPK extends GenericPk<UserInfmBean> implements Serializable {
    @JsonProperty("USR_ID")
    private String userId;
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    /**
     * @param request
     */
    @Override
    public void copyFrom(HttpServletRequest request) {
        if(StringUtils.isNotBlank(request.getParameter("USR_ID"))) setUserId(request.getParameter("USR_ID"));
    }

    /**
     * @return
     */
    @Override
    public String getDynamic() {
        return null;
    }

    /**
     * @param prefix
     * @return
     */
    @Override
    public String getDynamic(String prefix) {
        return null;
    }
}
