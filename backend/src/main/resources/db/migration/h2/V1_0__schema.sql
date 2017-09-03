CREATE TABLE universities (
    university_id BIGINT IDENTITY PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    abbreviation  VARCHAR(5)   NOT NULL
);

CREATE TABLE faculties (
    faculty_id    BIGINT IDENTITY PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    code          VARCHAR(5)   DEFAULT NULL,
    university_id BIGINT       NOT NULL,
    FOREIGN KEY (university_id) REFERENCES universities (university_id)
);

CREATE TABLE subjects (
    subject_id       BIGINT IDENTITY PRIMARY KEY,
    code             VARCHAR(10)    NOT NULL,
    name             VARCHAR(100)   NOT NULL,
    credit_points    INT            NOT NULL,
    description      VARCHAR(10000) NOT NULL,
    min_requirements VARCHAR(10000) DEFAULT NULL,
    undergrad        BOOLEAN        NOT NULL,
    postgrad         BOOLEAN        NOT NULL,
    autumn           BOOLEAN        NOT NULL,
    spring           BOOLEAN        NOT NULL,
    summer           BOOLEAN        NOT NULL,
    rating           FLOAT  DEFAULT 0.0,
    num_ratings      INT    DEFAULT 0,
    faculty_id       BIGINT         NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES faculties (faculty_id)
);

CREATE TABLE assessments (
    assessment_id BIGINT IDENTITY PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    description   VARCHAR(100) NOT NULL,
    weighting     INT          NOT NULL,
    group_work    BOOLEAN      NOT NULL,
    length        VARCHAR(100) NOT NULL,
    type          INT          NOT NULL,
    subject_id    BIGINT       NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);
