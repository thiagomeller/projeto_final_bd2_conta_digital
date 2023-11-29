CREATE TABLE [actions_log] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    action_date DATETIME NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    description VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);