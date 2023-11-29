package com.contadigital.apicontadigital.model;

import com.contadigital.apicontadigital.model.enums.CardType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Table(name = "[card]", schema = "dbo")
public class Card {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @NotNull(message = "The card number must not be null")
    @Column(name = "card_number", nullable = false)
    private Integer cardNumber;

    @NotNull(message = "The card holder must not be null")
    @Size(max = 60, message = "The card holder must be at max a 60 character long string")
    @Column(name = "card_holder")
    private String cardHolder;

    @NotNull(message = "The card validation date must not be null")
    @Column(name = "card_validation_date")
    private LocalDate cardValidationDate;

    @NotNull(message = "The card cvv must not be null")
    @Column(name = "card_cvv")
    private Integer cardCvv;

    @NotNull(message = "The card member since must not be null")
    @Column(name = "card_member_since")
    private LocalDate cardMemberSince;

    @NotNull(message = "The card type must not be null")
    @Column(name = "card_type")
    private CardType cardType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(Integer cardNumber) {
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
