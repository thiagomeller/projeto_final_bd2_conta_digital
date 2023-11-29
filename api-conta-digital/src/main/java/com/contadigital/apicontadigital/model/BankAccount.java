package com.contadigital.apicontadigital.model;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Entity
@Table(name = "[bank_account]", schema = "dbo")
public class BankAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @DecimalMax(value = "99999999999999999.99", message = "The maximum balance accepted is 99.999.999.999.999.999,99")
    @NotNull(message = "The balance must not be null")
    @Column(name = "balance")
    private BigDecimal balance;

    @DecimalMax(value = "99999999999999999.99", message = "The maximum credit limit accepted is 99.999.999.999.999.999,99")
    @NotNull(message = "The credit limit must not be null")
    @Column(name = "credit_limit")
    private BigDecimal creditLimit;

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

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public BigDecimal getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(BigDecimal creditLimit) {
        this.creditLimit = creditLimit;
    }
}