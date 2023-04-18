package com.lhf.entity;

import java.io.Serializable;

public class Users implements Serializable{
    private String username;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Users{" + "username='" + username + ",password='" + password + "'}";
    }

}
