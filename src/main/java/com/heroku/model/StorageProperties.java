package com.heroku.model;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("com.heroku.storefile")
public class StorageProperties {

    /**
     * Folder location for storing files
     */
//  /  private String location = "src/main/resources/templates/img";
    
    private String location = System.getProperty("catalina.home");

    

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}