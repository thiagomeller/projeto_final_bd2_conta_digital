package com.contadigital.apicontadigital.model.enums;

public enum ApplicationType {

    STOCK("S"),
    NATIONAL_TREASURY("T");

    private String description;

    ApplicationType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
