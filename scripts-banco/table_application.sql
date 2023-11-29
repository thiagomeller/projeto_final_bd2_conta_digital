CREATE TABLE [application] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    application_type CHAR(1) NOT NULL,
    value NUMERIC(19, 2) NOT NULL,
    interest_rate NUMERIC(3, 2) NOT NULL,
    created_at DATETIME NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_application_user FOREIGN KEY (user_id) REFERENCES [user](id),
    CONSTRAINT chk_application_type CHECK (application_type IN ('S', 'T'))
);
/* S: STOCK, T: NATIONAL TREASURY */
GO