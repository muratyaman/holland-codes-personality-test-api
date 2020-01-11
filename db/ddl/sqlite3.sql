CREATE TABLE personalities
(
    id             VARCHAR(1)   NOT NULL,
    initial        VARCHAR(1)   NOT NULL,
    title          VARCHAR(100) NOT NULL,
    alias          VARCHAR(100) NOT NULL,
    description    TEXT         NOT NULL,

    PRIMARY KEY (id ASC)
);

CREATE TABLE tests
(
    id             INTEGER      NOT NULL,
    title          VARCHAR(250) NOT NULL,
    description    TEXT         NOT NULL,
    seo_code       VARCHAR(100) NOT NULL,
    video_url      TEXT         NOT NULL,
    image_url      TEXT         NOT NULL,
    chapter_count  INTEGER      NOT NULL,
    question_count INTEGER      NOT NULL,
    active         INTEGER      NOT NULL,

    PRIMARY KEY (id ASC)
);

CREATE INDEX IX_tests_active ON tests (active ASC);

CREATE TABLE questions
(
    id             INTEGER      NOT NULL,
    title          VARCHAR(250) NOT NULL,
    test_id        INTEGER      NOT NULL,
    chapter_number INTEGER      NOT NULL,
    sort_idx       INTEGER      NOT NULL,
    active         INTEGER      NOT NULL,

    PRIMARY KEY (id ASC),
    FOREIGN KEY (test_id) REFERENCES tests (id)
);

CREATE INDEX FK_questions_test_id ON questions (test_id ASC);

CREATE INDEX IX_questions_test_chapter_sort_active ON questions
(
    test_id ASC,
    chapter_number ASC,
    sort_idx ASC,
    active ASC
);

CREATE TABLE choices
(
    id          INTEGER      NOT NULL,
    title       VARCHAR(250) NOT NULL,
    question_id INTEGER      NOT NULL,
    sort_idx    INTEGER      NOT NULL,
    active      INTEGER      NOT NULL,
    r           DECIMAL(4, 2) NOT NULL,
    i           DECIMAL(4, 2) NOT NULL,
    a           DECIMAL(4, 2) NOT NULL,
    s           DECIMAL(4, 2) NOT NULL,
    e           DECIMAL(4, 2) NOT NULL,
    c           DECIMAL(4, 2) NOT NULL,

    PRIMARY KEY (id ASC),
    FOREIGN KEY (question_id) REFERENCES questions (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX FK_choices_question_id ON choices (question_id ASC);

CREATE INDEX IX_choices_question_sort_active ON choices
(
    question_id ASC,
    sort_idx ASC,
    active ASC
);


CREATE TABLE users_answers
(
    id          VARCHAR(36) NOT NULL, -- UUID
    attempt_id  VARCHAR(36) NOT NULL, -- UUID
    user_id     VARCHAR(36) NULL, -- UUID; guests are allowed to complete a test
    test_id     INTEGER   NOT NULL,
    question_id INTEGER   NOT NULL,
    choice_id   INTEGER   NOT NULL,
    created_at  DATETIME  NOT NULL,

    PRIMARY KEY (id ASC),
    FOREIGN KEY (test_id)     REFERENCES tests (id)     ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (choice_id)   REFERENCES choices (id)   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX IX_users_answers_attempt_id ON users_answers (attempt_id ASC);

CREATE INDEX FK_users_answers_user_id ON users_answers (user_id ASC);

CREATE INDEX FK_users_answers_test_id ON users_answers (test_id ASC);

CREATE INDEX FK_users_answers_question_id ON users_answers (question_id ASC);

CREATE INDEX FK_users_answers_choice_id ON users_answers (choice_id ASC);

CREATE INDEX IX_users_answers_created_at ON users_answers (created_at ASC);
