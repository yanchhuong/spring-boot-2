package com.heroku.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.heroku.commons.StringUtils;
import com.heroku.enums.SignType;
import com.heroku.enums.YesOrNo;
import com.heroku.model.generic.GenericEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
@Getter
@Setter
@Entity
@Table(name = "USER_INFM")
public class UserInfmBean implements GenericEntity<UserInfmBean, UserInfmPK> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // or AUTO
    private Long id;

    @JsonProperty("USR_ID")
    private String userId;

    @JsonProperty("USR_NM")
    private String UserNm;

    @JsonProperty("USR_PW")
    private String UserPw;

    @JsonProperty("TEL")
    private String tel;

    @JsonProperty("EML")
    private String email;

    @JsonProperty("USR_IMG")
    private String userImg;

    @JsonProperty("LOCK_YN")
    private YesOrNo lockYn;

    @JsonProperty("ACT_YN")
    private YesOrNo activeYn;

    @JsonProperty("SIGN_TYPE")
    private SignType signType;

    @JsonProperty("URL")
    private String url;

    @JsonProperty("REG_DT")
    private String regDt;

    @JsonProperty("MOD_DT")
    private String modDt;

    @JsonProperty("MOD_ID")
    private String modId;
    @JsonProperty("REG_ID")
    private String regId;


    public UserInfmBean() {
        super();
    }
    public UserInfmBean(HttpServletRequest request) {
        setUserId(request.getParameter("USR_ID"));
    }
 /*   @Override
    public UserInfmPK getPk() {
        UserInfmBean pk = new UserInfmBean();
        pk.setUserId(getUserId());
        return  pk;
    }*/
    public void copyFrom(HttpServletRequest request) {
        /*super.copyFrom(request);*/
        if(StringUtils.isNotBlank(request.getParameter("USR_ID"))) setUserId(request.getParameter("USR_ID"));
        if(StringUtils.isNotBlank(request.getParameter("USR_NM"))) setUserNm(request.getParameter("USR_NM"));
        if(StringUtils.isNotBlank(request.getParameter("USR_PW"))) setUserPw(request.getParameter("USR_PW"));
        if(StringUtils.isNotBlank(request.getParameter("TEL"))) setTel(request.getParameter("TEL"));
        if(StringUtils.isNotBlank(request.getParameter("EML"))) setTel(request.getParameter("EML"));
        if(StringUtils.isNotBlank(request.getParameter("USR_IMG"))) setUserImg(request.getParameter("USR_IMG"));
        if(StringUtils.isNotBlank(request.getParameter("LOCK_YN"))) setLockYn(YesOrNo.fromValue(request.getParameter("LOCK_YN")));
        if(StringUtils.isNotBlank(request.getParameter("ACT_YN"))) setActiveYn(YesOrNo.fromValue(request.getParameter("ACT_YN")));
        if(StringUtils.isNotBlank(request.getParameter("SIGN_TYPE"))) setSignType(SignType.fromValue(request.getParameter("SIGN_TYPE")));
        if(StringUtils.isNotBlank(request.getParameter("URL"))) setUrl(request.getParameter("URL"));
        if(StringUtils.isNotBlank(request.getParameter("REG_DT"))) setRegDt(request.getParameter("REG_DT"));
        if(StringUtils.isNotBlank(request.getParameter("MOD_DT"))) setModDt(request.getParameter("MOD_DT"));
        if(StringUtils.isNotBlank(request.getParameter("MOD_ID"))) setModId(request.getParameter("MOD_ID"));
        if(StringUtils.isNotBlank(request.getParameter("REG_ID"))) setRegId(request.getParameter("REG_ID"));
    }

    /**
     * @return
     */
    @Override
    public UserInfmPK getPk() {
        return null;
    }
}
