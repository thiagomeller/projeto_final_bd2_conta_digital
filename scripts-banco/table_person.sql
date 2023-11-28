CREATE TABLE [person] (
    id INT NOT NULL IDENTITY(1, 1),
    cnpj VARCHAR(18) NOT NULL,
    institution_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);