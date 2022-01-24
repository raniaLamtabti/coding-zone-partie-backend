create table stuff
(
    id          serial
        primary key,
    name        varchar(255)                           not null,
    email       varchar(255)                           not null,
    password    varchar(255)                           not null,
    description text,
    created_at  timestamp with time zone default now() not null,
    updated_at  timestamp with time zone default now() not null
);

alter table stuff
    owner to postgres;

create table student
(
    id         serial
        primary key,
    first_name varchar(255)            not null,
    last_name  varchar(255)            not null,
    email      varchar(255)            not null,
    created_at timestamp default now() not null,
    updated_at timestamp default now() not null
);

alter table student
    owner to postgres;

create table test_category
(
    id         serial
        primary key,
    name       varchar(255)            not null,
    created_at timestamp default now() not null,
    updated_at timestamp default now() not null
);

alter table test_category
    owner to postgres;

create table test
(
    id               serial
        primary key,
    name             varchar(255)            not null,
    description      text,
    test_category_id integer                 not null
        references test_category,
    start_time       timestamp default now() not null,
    end_time         timestamp default now() not null,
    created_at       timestamp default now() not null,
    updated_at       timestamp default now() not null
);

alter table test
    owner to postgres;

create table question
(
    id           serial
        primary key,
    content      varchar(255)            not null,
    time_to_live integer                 not null,
    score        integer                 not null,
    test_id      integer                 not null
        references test,
    created_at   timestamp default now() not null,
    updated_at   timestamp default now() not null
);

alter table question
    owner to postgres;

create table answer
(
    id          serial
        primary key,
    content     varchar(255)            not null,
    is_correct  boolean                 not null,
    question_id integer                 not null
        references question,
    created_at  timestamp default now() not null,
    updated_at  timestamp default now() not null
);

alter table answer
    owner to postgres;

create table test_student
(
    id           serial
        primary key,
    test_id      integer                 not null
        references test,
    student_id   integer                 not null
        references student,
    access_token varchar(255)            not null,
    is_take      boolean                 not null,
    created_at   timestamp default now() not null,
    updated_at   timestamp default now() not null
);

alter table test_student
    owner to postgres;

create table test_result
(
    id              serial
        primary key,
    test_student_id integer                 not null
        references test_student,
    score           integer                 not null,
    question_id     integer                 not null,
    answer_id       integer                 not null,
    test_id         integer                 not null,
    reponse_time    integer                 not null,
    created_at      timestamp default now() not null,
    updated_at      timestamp default now() not null
);

alter table test_result
    owner to postgres;


