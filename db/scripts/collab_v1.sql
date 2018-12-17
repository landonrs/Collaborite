CREATE TABLE USERS
(
    userId serial NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(100),
    profileImg bytea,
    PRIMARY KEY (userId)
);

CREATE TABLE PROJECTS
(
    projectId serial NOT NULL,
    title varchar(100) NOT NULL,
    description varchar(500) NOT NULL,
    creator INTEGER REFERENCES USERS(userId), 
    category varchar(50) NOT NULL,
    content text DEFAULT '',
    startDate Date NOT NULL,
    characterCount int DEFAULT 0 NOT NULL,
    upvotes int DEFAULT 0 NOT NULL,
    running boolean DEFAULT TRUE,
    challengeMode boolean DEFAULT FALSE,
    PRIMARY KEY (projectId)
);

CREATE TABLE PROJECT_CONTRIBUTORS
(
    userId INTEGER REFERENCES USERS(userId),
    projectId INTEGER REFERENCES PROJECTS(projectId),
    kudos INTEGER NOT NULL DEFAULT 0,
    contribution text NOT NULL DEFAULT ''
);

CREATE TABLE PROJECT_QUEUES
(
    userId INTEGER REFERENCES USERS(userId),
    projectId INTEGER REFERENCES PROJECTS(projectId),
    position INTEGER NOT NULL
);

INSERT INTO USERS (username, password, email)
VALUES
(
    'landonrs', 'test', 'altruist8@yahoo.com'
);