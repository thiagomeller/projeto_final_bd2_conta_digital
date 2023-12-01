package com.contadigital.apicontadigital.model.enums;

public enum CardType {

    C("CREDIT"),
    D("DEBIT");

    private String description;

    CardType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
