CREATE TABLE [card] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    card_number VARCHAR(20) NOT NULL,
    card_holder VARCHAR(60) NOT NULL,
    card_validation_date DATE NOT NULL,
    card_cvv TINYINT NOT NULL,
    card_member_since DATE NOT NULL,
    card_type CHAR(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT chk_card_type CHECK (card_type IN ('D', 'C')),
    CONSTRAINT fk_card_user FOREIGN KEY (user_id) REFERENCES [user](id)
);
/* D: DEBIT, C: CREDIT */
