package com.heroku.service.impl;

import com.heroku.service.StorageService;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Path;
import java.util.stream.Stream;
@Service
public class StorageServiceImpl implements StorageService {
    /**
     *
     */
    @Override
    public void init() {

    }

    /**
     * @param file
     */
    @Override
    public void store(MultipartFile file) {

    }

    /**
     * @return
     */
    @Override
    public Stream<Path> loadAll() {
        return null;
    }

    /**
     * @param filename
     * @return
     */
    @Override
    public Path load(String filename) {
        return null;
    }

    /**
     * @param filename
     * @return
     */
    @Override
    public Resource loadAsResource(String filename) {
        return null;
    }

    /**
     *
     */
    @Override
    public void deleteAll() {

    }
}
