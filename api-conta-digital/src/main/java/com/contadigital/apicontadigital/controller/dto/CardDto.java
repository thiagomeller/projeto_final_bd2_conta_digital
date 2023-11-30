package com.contadigital.apicontadigital.controller.dto;

import com.contadigital.apicontadigital.model.enums.CardType;

import java.io.Serializable;
import java.time.LocalDate;

public class CardDto implements Serializable {

    private Long id;

    private Long userId;

    private String cardNumber;

    private String cardHolder;

    private LocalDate cardValidationDate;

    private Integer cardCvv;

    private LocalDate cardMemberSince;

    private CardType cardType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardHolder() {
        return cardHolder;
    }

    public void setCardHolder(String cardHolder) {
        this.cardHolder = cardHolder;
    }

    public LocalDate getCardValidationDate() {
        return cardValidationDate;
    }

    public void setCardValidationDate(LocalDate cardValidationDate) {
        this.cardValidationDate = cardValidationDate;
    }

    public Integer getCardCvv() {
        return cardCvv;
    }

    public void setCardCvv(Integer cardCvv) {
        this.cardCvv = cardCvv;
    }

    public LocalDate getCardMemberSince() {
        return cardMemberSince;
    }

    public void setCardMemberSince(LocalDate cardMemberSince) {
        this.cardMemberSince = cardMemberSince;
    }

    public CardType getCardType() {
        return cardType;
    }

    public void setCardType(CardType cardType) {
        this.cardType = cardType;
    }
}