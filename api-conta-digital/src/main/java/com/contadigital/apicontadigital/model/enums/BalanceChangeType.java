package com.contadigital.apicontadigital.model.enums;

public enum BalanceChangeType {

    CREDIT("C"),
    DEBIT("D");

    private String description;

    BalanceChangeType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
