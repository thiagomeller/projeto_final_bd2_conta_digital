package com.contadigital.apicontadigital.model.enums;

public enum BalanceChangeType {

    C("CREDIT"),
    D("DEBIT");

    private String description;

    BalanceChangeType(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
