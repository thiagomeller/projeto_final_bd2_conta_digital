package com.contadigital.apicontadigital.model;

import com.contadigital.apicontadigital.model.enums.BalanceChangeType;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "transaction")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @NotNull(message = "The type field must not be null")
    @Size(max = 20, message = "The type field should be at max a 20 character long string")
    @Column(name = "type")
    private String type;

    @NotNull(message = "The description must not be null")
    @Size(max = 50, message = "The description should be at max a 50 character long string")
    @Column(name = "description")
    private String description;


    @DecimalMax(value = "99999999999999999.99", message = "The maximum value accepted is 99.999.999.999.999.999,99")
    @NotNull(message = "The value must not be null")
    @Column(name = "value")
    private BigDecimal value;

    @NotNull(message = "The balance change type must not be null")
    @Column(name = "balance_change_type")
    private BalanceChangeType balanceChangeType;

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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

    public BalanceChangeType getBalanceChangeType() {
        return balanceChangeType;
    }

    public void setBalanceChangeType(BalanceChangeType balanceChangeType) {
        this.balanceChangeType = balanceChangeType;
    }
}