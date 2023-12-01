package com.contadigital.apicontadigital.controller.dto;

import java.io.Serializable;

public class PersonDto implements Serializable {

    private String cnpj;

    private String institutionName;

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getInstitutionName() {
        return institutionName;
    }

    public void setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }
}
