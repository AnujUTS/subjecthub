CREATE TABLE universities (
    university_id BIGINT IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    abbreviation VARCHAR(5) NOT NULL
);

CREATE TABLE faculties (
    faculty_id BIGINT IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(5) NOT NULL,
    university_id BIGINT NOT NULL,
    FOREIGN KEY (university_id) REFERENCES universities (university_id)
);

CREATE TABLE subjects (
    subject_id BIGINT IDENTITY PRIMARY KEY,
    code VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    credit_points INT NOT NULL,
    description VARCHAR(10000) NOT NULL,
    min_requirements VARCHAR(1000) NOT NULL,
    undergrad BOOLEAN NOT NULL,
    postgrad BOOLEAN NOT NULL,
    autumn BOOLEAN NOT NULL,
    spring BOOLEAN NOT NULL,
    summer BOOLEAN NOT NULL,
    rating FLOAT DEFAULT 0.0,
    num_ratings INT DEFAULT 0,
    faculty_id BIGINT NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES faculties (faculty_id)
);

CREATE TABLE assessments (
    assessment_id BIGINT IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    weighting INT NOT NULL,
    group_work BOOLEAN NOT NULL,
    length VARCHAR(100) NOT NULL,
    type INT NOT NULL,
    subject_id BIGINT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);


/* Initialise universities */
INSERT INTO universities (university_id, name, abbreviation)
VALUES (1, 'University of Technology Sydney', 'UTS');

INSERT INTO universities (university_id, name, abbreviation)
VALUES (2, 'University of Wollongong', 'UOW');

INSERT INTO universities (university_id, name, abbreviation)
VALUES (3, 'University of Sydney', 'USYD');

/* Initialise faculties */
INSERT INTO faculties (faculty_id, name, code, university_id)
VALUES (1, 'Faculty of Engineering and Information Technology', 'FEIT', 1);

INSERT INTO faculties (faculty_id, name, code, university_id)
VALUES (2, 'Faculty of Health', 'FOH', 1);

INSERT INTO faculties (faculty_id, name, code, university_id)
VALUES (3, 'Faculty of Law', 'FOL', 1);



/* Initialise subjects */

/* SOFTWARE ENGINEERING PRACTICE */
INSERT INTO subjects (subject_id, code, name, credit_points, description, min_requirements, undergrad,
                      postgrad, autumn, spring, summer, faculty_id)
VALUES (
    1,
    '48440',
    'Software Engineering Practice',
    6,
    'This subject introduces students to the fundamentals of contemporary software engineering. An overview of the agile and non-agile software engineering principles, methods, tools and techniques is presented. Current trends and challenges in the practice of software engineering are explored. Students apply contemporary agile requirements analysis, planning, architecture, design, implementation and testing practices to software engineering project work in small teams.',
    'In order to pass the subject, you must\nearn an overall total of 50 marks or more for the subject; and \nhave submitted two project assessment tasks (Assessment Items 1-2) containing all the required items; and\nhave submitted an Individual Contribution Logbook with the project assessment tasks (Assessment Items 1-2) containing all the required items.\n\nNote: The Individual Contribution Logbook is mandatory for students to receive any individual project marks. If a student does not submit this assessment item, then he/she will receive zero for the project assessment tasks (Assessment Items 1-2).',
    TRUE,
    FALSE,
    FALSE,
    TRUE,
    FALSE,
    1
);

/* Applications Programming */
INSERT INTO subjects (subject_id, code, name, credit_points, description, min_requirements, undergrad,
                      postgrad, autumn, spring, summer, faculty_id)
VALUES (
    2,
    '48024',
    'Applications Programming',
    6,
    'This subject teaches students how to design, develop and evaluate software systems to meet predefined quality characteristics of functionality (suitability) and usability (understandability, learnability, operability, compliance). Software solutions are implemented using Java. Concepts, theories and technologies underlying the methods and techniques are introduced and explained as required. Students apply all that they have learned to develop and implement the architecture of a business system.',
    'A student must have a total mark for the subject >= 50% and an exam mark >= 50% to pass the subject.\nIf you have a mark of >= 50% for the subject, but have failed the exam, you will be awarded a Fail (X) grade for the subject.Under the University''s rules, no supplementary exam will be given.',
    TRUE,
    FALSE,
    TRUE,
    TRUE,
    FALSE,
    1
);