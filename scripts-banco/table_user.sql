CREATE TABLE [user] (
    id INT NOT NULL IDENTITY(1, 1),
    person_id INT NOT NULL,
    username VARCHAR(40) UNIQUE NOT NULL,
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_user_person FOREIGN KEY (person_id) REFERENCES [person](id)
);