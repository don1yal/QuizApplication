CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(25) NOT NULL UNIQUE,
    password VARCHAR(15) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1;


CREATE TABLE quiz(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    category VARCHAR(20) NOT NULL,
    level VARCHAR(10)
)AUTO_INCREMENT = 1;


CREATE TABLE question(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    quiz_id BIGINT NOT NULL,
    question TEXT NOT NULL,
    category varchar(20) NOT NULL,
    level varchar(10) NOT NULL,
    CONSTRAINT fk_quiz
        FOREIGN KEY (quiz_id) REFERENCES quiz(id)
)AUTO_INCREMENT = 1;


CREATE TABLE question_option (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    question_id BIGINT NOT NULL,
    option_text VARCHAR(255),
    correct INT,
    FOREIGN KEY (question_id) REFERENCES question(id) ON DELETE CASCADE
);


CREATE TABLE result(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    quiz_id BIGINT NOT NULL,
    score INT,
    CONSTRAINT fk_user
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_quiz
        FOREIGN KEY (quiz_id) REFERENCES quiz(id) ON DELETE CASCADE ON UPDATE CASCADE
) AUTO_INCREMENT = 1;