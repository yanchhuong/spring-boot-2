package com.heroku.dao.impl;

import com.heroku.dao.UsersInfmDao;
import com.heroku.model.UserInfmBean;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class UserInfmImpl implements UsersInfmDao {
    @Override
    public UserInfmBean findByEmail(String email) {
        return null;
    }

    /**
     * @param phoneNumber
     * @return
     */
    @Override
    public UserInfmBean findByTel(String phoneNumber) {
        return null;
    }

    /**
     * @return
     */
    @Override
    public List<UserInfmBean> findAll() {
        return null;
    }

    /**
     * @param sort
     * @return
     */
    @Override
    public List<UserInfmBean> findAll(Sort sort) {
        return null;
    }

    /**
     * @param pageable
     * @return
     */
    @Override
    public Page<UserInfmBean> findAll(Pageable pageable) {
        return null;
    }

    /**
     * @param strings
     * @return
     */
    @Override
    public List<UserInfmBean> findAllById(Iterable<String> strings) {
        return null;
    }

    /**
     * @return
     */
    @Override
    public long count() {
        return 0;
    }

    /**
     * @param s
     */
    @Override
    public void deleteById(String s) {

    }

    /**
     * @param entity
     */
    @Override
    public void delete(UserInfmBean entity) {

    }

    /**
     * @param strings
     */
    @Override
    public void deleteAllById(Iterable<? extends String> strings) {

    }

    /**
     * @param entities
     */
    @Override
    public void deleteAll(Iterable<? extends UserInfmBean> entities) {

    }

    /**
     *
     */
    @Override
    public void deleteAll() {

    }

    /**
     * @param entity
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> S save(S entity) {
        return null;
    }

    /**
     * @param entities
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    /**
     * @param s
     * @return
     */
    @Override
    public Optional<UserInfmBean> findById(String s) {
        return Optional.empty();
    }

    /**
     * @param s
     * @return
     */
    @Override
    public boolean existsById(String s) {
        return false;
    }

    /**
     *
     */
    @Override
    public void flush() {

    }

    /**
     * @param entity
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> S saveAndFlush(S entity) {
        return null;
    }

    /**
     * @param entities
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    /**
     * @param entities
     */
    @Override
    public void deleteAllInBatch(Iterable<UserInfmBean> entities) {

    }

    /**
     * @param strings
     */
    @Override
    public void deleteAllByIdInBatch(Iterable<String> strings) {

    }

    /**
     *
     */
    @Override
    public void deleteAllInBatch() {

    }

    /**
     * @param s
     * @return
     */
    @Override
    public UserInfmBean getOne(String s) {
        return null;
    }

    /**
     * @param s
     * @return
     */
    @Override
    public UserInfmBean getById(String s) {
        return null;
    }

    /**
     * @param s
     * @return
     */
    @Override
    public UserInfmBean getReferenceById(String s) {
        return null;
    }

    /**
     * @param example
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    /**
     * @param example
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> List<S> findAll(Example<S> example) {
        return null;
    }

    /**
     * @param example
     * @param sort
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    /**
     * @param example
     * @param pageable
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    /**
     * @param example
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> long count(Example<S> example) {
        return 0;
    }

    /**
     * @param example
     * @param <S>
     * @return
     */
    @Override
    public <S extends UserInfmBean> boolean exists(Example<S> example) {
        return false;
    }

    /**
     * @param example
     * @param queryFunction
     * @param <S>
     * @param <R>
     * @return
     */
    @Override
    public <S extends UserInfmBean, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
