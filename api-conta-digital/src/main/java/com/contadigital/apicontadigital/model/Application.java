package com.contadigital.apicontadigital.model;

import com.contadigital.apicontadigital.model.enums.ApplicationType;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "[application]", schema = "dbo")
public class Application {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @NotNull(message = "The application type must not be null")
    @Column(name = "application_type")
    private ApplicationType applicationType;

    @NotNull(message = "The value must not be null")
    @DecimalMax(value = "99999999999999999.99", message = "The maximum value accepted is 99.999.999.999.999.999,99")
    @Column(name = "value")
    private BigDecimal value;

    @NotNull(message = "The interest rate must not be null")
    @DecimalMax(value = "9.99", message = "The maximum interest rate accepted is 9,99%")
    @Column(name = "interest_rate")
    private BigDecimal interestRate;

    @Column(name = "created_at")
    private LocalDate createdAt;

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

    public ApplicationType getApplicationType() {
        return applicationType;
    }

    public void setApplicationType(ApplicationType applicationType) {
        this.applicationType = applicationType;
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

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }
}
