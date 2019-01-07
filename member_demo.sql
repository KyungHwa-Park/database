drop table member cascade constraints;

create table member(
    user_id         varchar2(20)        primary key,
    password        varchar2(200)       not null,
    par_name        varchar2(20)        not null,
    par_birth       date,
    baby_name       varchar2(20)        not null,
    baby_birth      date,
    email           varchar2(30)        not null,
    reg_date        date                default(sysdate),
    update_date     date                default(sysdate)
);

insert into member
values 
('abc', '1234', 'mom', null, 'bebe', '19/01/01', 'abc@gmail.com', sysdate, sysdate);

select * from member;