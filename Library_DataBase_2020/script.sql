create table author
(
    id_author      integer not null
        constraint author_pkey
            primary key,
    name_author    varchar(15),
    surname_author varchar(20)
);

alter table author
    owner to postgres;

create table person
(
    id_person   varchar(9) not null
        constraint person_pkey
            primary key,
    name_person varchar(10),
    surname     varchar(20),
    telephone   varchar(10)
);

alter table person
    owner to postgres;

create table customer
(
    attribute varchar(8),
    id_person varchar(9) not null
        constraint customer_pkey
            primary key
        constraint customer_id_person_fkey
            references person
            on delete cascade
);

alter table customer
    owner to postgres;

create table employee
(
    id_person varchar(9) not null
        constraint employee_pkey
            primary key
        constraint employee_id_person_fkey
            references person
);

alter table employee
    owner to postgres;

create table borrowing
(
    book_id            integer not null
        constraint borrowing_pkey
            primary key,
    id_customer_person varchar(9)
        constraint borrowing_id_customer_person_fkey
            references customer
            on delete cascade,
    id_employee_person varchar(9)
        constraint borrowing_id_employee_person_fkey
            references employee
            on delete cascade
);

alter table borrowing
    owner to postgres;

create table books
(
    isbn           varchar(20) not null
        constraint books_pkey
            primary key,
    tittle_books   varchar(25),
    name_publisher varchar(20),
    book_available varchar(3)
        constraint books_book_available_check
            check ((book_available)::text = ANY ((ARRAY ['YES'::character varying, 'NO'::character varying])::text[]))
);

alter table books
    owner to postgres;

create table write1
(
    id_author integer     not null
        constraint write1_id_author_fkey
            references author
            on delete cascade,
    isbn      varchar(20) not null
        constraint write1_isbn_fkey
            references books
            on delete cascade,
    constraint write1_pkey
        primary key (id_author, isbn)
);

alter table write1
    owner to postgres;

create table final1
(
    book_id integer not null
        constraint final1_pkey
            primary key
        constraint final1_book_id_fkey
            references borrowing,
    isbn    varchar(20)
        constraint final1_isbn_fkey
            references books
);

alter table final1
    owner to postgres;

create table category
(
    id_category     integer not null
        constraint category_pkey
            primary key,
    tittle_category varchar(40)
);

alter table category
    owner to postgres;

create table belong
(
    isbn        varchar(20) not null
        constraint belong_isbn_fkey
            references books
            on delete cascade,
    id_category integer     not null
        constraint belong_id_category_fkey
            references category
            on delete cascade,
    constraint belong_pkey
        primary key (isbn, id_category)
);

alter table belong
    owner to postgres;


