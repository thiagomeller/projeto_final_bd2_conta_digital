package com.contadigital.apicontadigital.model.enums;

public enum ApplicationType {

    S("STOCK"),
    T("NATIONAL_TREASURY");

    private String description;

    ApplicationType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
