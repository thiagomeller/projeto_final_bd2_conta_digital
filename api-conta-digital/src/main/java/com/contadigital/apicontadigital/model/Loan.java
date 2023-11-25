package com.contadigital.apicontadigital.model;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "loan")
public class Loan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @NotNull(message = "The value must not be null")
    @DecimalMax(value = "99999999999999999.99", message = "The maximum value accepted is 99.999.999.999.999.999,99")
    @Column(name = "value")
    private BigDecimal value;

    @NotNull(message = "The interest rate must not be null")
    @DecimalMax(value = "9.99", message = "The maximum interest rate accepted is 9,99%")
    @Column(name = "interest_rate")
    private BigDecimal interestRate;

    @NotNull(message = "The installments must not be null")
    @Column(name = "installments")
    private Integer installments;

    @NotNull(message = "The initial date must not be null")
    @Column(name = "initial_date")
    private LocalDateTime initialDate;

    @NotNull(message = "The final date must not be null")
    @Column(name = "final_date")
    private LocalDateTime finalDate;

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

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

    public BigDecimal getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(BigDecimal interestRate) {
        this.interestRate = interestRate;
    }

    public Integer getInstallments() {
        return installments;
    }

    public void setInstallments(Integer installments) {
        this.installments = installments;
    }

    public LocalDateTime getInitialDate() {
        return initialDate;
    }

    public void setInitialDate(LocalDateTime initialDate) {
        this.initialDate = initialDate;
    }

    public LocalDateTime getFinalDate() {
        return finalDate;
    }

    public void setFinalDate(LocalDateTime finalDate) {
        this.finalDate = finalDate;
    }
}
