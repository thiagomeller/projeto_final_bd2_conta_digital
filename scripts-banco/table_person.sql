CREATE TABLE [person] (
	id INT NOT NULL IDENTITY(1, 1),
	cnpj VARCHAR(14) NOT NULL,
	institution_name VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);
