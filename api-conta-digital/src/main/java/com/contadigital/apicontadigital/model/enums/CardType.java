package com.contadigital.apicontadigital.model.enums;

public enum CardType {

    CREDIT("C"),
    DEBIT("D");

    private String description;

    CardType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
