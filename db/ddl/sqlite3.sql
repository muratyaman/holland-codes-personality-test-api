CREATE TABLE gca_personalities
(
    id             VARCHAR(1)   NOT NULL,
    initial_en     VARCHAR(1)   NOT NULL,
    initial_ar     VARCHAR(1)   NOT NULL,
    title_en       VARCHAR(100) NOT NULL,
    title_ar       VARCHAR(100) NOT NULL,
    alias_en       VARCHAR(100) NOT NULL,
    alias_ar       VARCHAR(100) NOT NULL,
    description_en TEXT         NOT NULL,
    description_ar TEXT         NOT NULL,

    PRIMARY KEY (id ASC)
);

CREATE TABLE gca_tests
(
    id             INTEGER      NOT NULL,
    title_en       VARCHAR(250) NOT NULL,
    title_ar       VARCHAR(250) NOT NULL,
    description_en TEXT         NOT NULL,
    description_ar TEXT         NOT NULL,
    seo_code       VARCHAR(100) NOT NULL,
    video_url      TEXT         NOT NULL,
    image_url      TEXT         NOT NULL,
    chapter_count  INTEGER      NOT NULL,
    question_count INTEGER      NOT NULL,
    active         INTEGER      NOT NULL,

    PRIMARY KEY (id ASC)
);

CREATE INDEX IX_gca_tests_active ON gca_tests (active ASC);

CREATE TABLE gca_questions
(
    id             INTEGER      NOT NULL,
    title_en       VARCHAR(250) NOT NULL,
    title_ar       VARCHAR(250) NOT NULL,
    test_id        INTEGER      NOT NULL,
    chapter_number INTEGER      NOT NULL,
    sort_idx       INTEGER      NOT NULL,
    active         INTEGER      NOT NULL,

    PRIMARY KEY (id ASC),
    FOREIGN KEY (test_id) REFERENCES tests (id)
);

CREATE INDEX FK_questions_test_id ON gca_questions (test_id ASC);

CREATE INDEX IX_questions_test_chapter_sort_active ON gca_questions
(
    test_id ASC,
    chapter_number ASC,
    sort_idx ASC,
    active ASC
);

CREATE TABLE gca_choices
(
    id          INTEGER      NOT NULL,
    title_en    VARCHAR(250) NOT NULL,
    title_ar    VARCHAR(250) NOT NULL,
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
    FOREIGN KEY (question_id) REFERENCES gca_questions (id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX FK_gca_choices_question_id ON gca_choices (question_id ASC);

CREATE INDEX IX_gca_choices_question_sort_active ON gca_choices
(
    question_id ASC,
    sort_idx ASC,
    active ASC
);


CREATE TABLE gca_users_answers
(
    id          VARCHAR(36) NOT NULL, -- UUID
    attempt_id  VARCHAR(36) NOT NULL, -- UUID
    user_id     VARCHAR(36) NULL, -- UUID; guests are allowed to complete a test
    test_id     INTEGER   NOT NULL,
    question_id INTEGER   NOT NULL,
    choice_id   INTEGER   NOT NULL,
    created_at  DATETIME  NOT NULL,

    PRIMARY KEY (id ASC),

    -- TODO: check table name
    -- FOREIGN KEY (user_id)     REFERENCES users (id)         ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (test_id)     REFERENCES gca_tests (id)     ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES gca_questions (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (choice_id)   REFERENCES gca_choices (id)   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX IX_users_answers_attempt_id ON gca_users_answers (attempt_id ASC);

CREATE INDEX FK_users_answers_user_id ON gca_users_answers (user_id ASC);

CREATE INDEX FK_users_answers_test_id ON gca_users_answers (test_id ASC);

CREATE INDEX FK_users_answers_question_id ON gca_users_answers (question_id ASC);

CREATE INDEX FK_users_answers_choice_id ON gca_users_answers (choice_id ASC);

CREATE INDEX IX_users_answers_created_at ON gca_users_answers (created_at ASC);
