package com.heroku.dao;

import com.heroku.model.UserInfmBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface UsersInfmDao  extends JpaRepository<UserInfmBean,String> {

    UserInfmBean findByEmail(String email);
    UserInfmBean findByTel(String phoneNumber);
}
