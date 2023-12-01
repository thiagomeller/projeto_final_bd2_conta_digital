package com.contadigital.apicontadigital.controller.dto;

import java.io.Serializable;

public class UserDto implements Serializable {

    private Long personId;

    private String username;

    public Long getPersonId() {
        return personId;
    }

    public void setPersonId(Long personId) {
        this.personId = personId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
