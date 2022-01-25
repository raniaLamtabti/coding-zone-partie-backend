create table stuff
(
    id          bigint                   default nextval('stuff_id_seq'::regclass) not null,
    name        varchar(255)                                                       not null,
    email       varchar(255)                                                       not null,
    password    varchar(255)                                                       not null,
    description text,
    created_at  timestamp with time zone default now()                             not null,
    updated_at  timestamp with time zone default now()                             not null
);

alter table stuff
    owner to postgres;

create unique index stuff_pkey
    on stuff (id);

create table student
(
    id         bigint    default nextval('student_id_seq'::regclass) not null,
    first_name varchar(255)                                          not null,
    last_name  varchar(255)                                          not null,
    email      varchar(255)                                          not null,
    created_at timestamp default now()                               not null,
    updated_at timestamp default now()                               not null
);

alter table student
    owner to postgres;

create unique index student_pkey
    on student (id);

create table test_category
(
    id         bigint    default nextval('test_category_id_seq'::regclass) not null,
    name       varchar(255)                                                not null,
    created_at timestamp default now()                                     not null,
    updated_at timestamp default now()                                     not null
);

alter table test_category
    owner to postgres;

create unique index test_category_pkey
    on test_category (id);

create table test
(
    id               bigint    default nextval('test_id_seq'::regclass) not null,
    name             varchar(255)                                       not null,
    description      text,
    test_category_id bigint                                             not null,
    start_time       timestamp default now(),
    end_time         timestamp default now(),
    created_at       timestamp default now()                            not null,
    updated_at       timestamp default now()                            not null
);

alter table test
    owner to postgres;

create unique index test_pkey
    on test (id);

create table question
(
    id           bigint    default nextval('question_id_seq'::regclass) not null,
    content      varchar(255)                                           not null,
    time_to_live integer                                                not null,
    score        integer                                                not null,
    test_id      bigint                                                 not null,
    created_at   timestamp default now()                                not null,
    updated_at   timestamp default now()                                not null
);

alter table question
    owner to postgres;

create unique index question_pkey
    on question (id);

create table answer
(
    id          bigint    default nextval('answer_id_seq'::regclass) not null,
    content     varchar(255)                                         not null,
    is_correct  boolean                                              not null,
    question_id bigint                                               not null,
    created_at  timestamp default now()                              not null,
    updated_at  timestamp default now()                              not null
);

alter table answer
    owner to postgres;

create unique index answer_pkey
    on answer (id);

create table test_student
(
    id           bigint    default nextval('test_student_id_seq'::regclass) not null,
    test_id      bigint                                                     not null,
    student_id   bigint                                                     not null,
    access_token varchar(255)                                               not null,
    is_take      boolean                                                    not null,
    created_at   timestamp default now()                                    not null,
    updated_at   timestamp default now()                                    not null
);

alter table test_student
    owner to postgres;

create unique index test_student_pkey
    on test_student (id);

create table test_result
(
    id              bigint    default nextval('test_result_id_seq'::regclass) not null,
    test_student_id bigint                                                    not null,
    score           integer                                                   not null,
    question_id     bigint                                                    not null,
    answer_id       bigint                                                    not null,
    test_id         bigint                                                    not null,
    reponse_time    integer                                                   not null,
    created_at      timestamp default now()                                   not null,
    updated_at      timestamp default now()                                   not null
);

alter table test_result
    owner to postgres;

create unique index test_result_pkey
    on test_result (id);


