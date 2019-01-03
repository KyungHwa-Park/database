drop table member cascade constraints;

create table member(
    user_id         varchar2(20)        primary key,
    password        varchar2(200)       not null,
    par_name        varchar2(20)        not null,
    par_birth       date,                
    email           varchar2(30)        not null,
    reg_date        date                default(sysdate),
    update_date     date                default(sysdate)
);

drop table baby cascade constraints;

create table baby(
    baby_id         number              primary key,
    user_id         varchar2(20)        not null,
    baby_name       varchar2(20)        not null,
    baby_birth      date                not null,
    reg_date        date                default(sysdate),
    update_date     date                default(sysdate),
    constraint member foreign key(user_id) references member(user_id)
);



insert into member
values 
('abc', '1234', 'mom', null, 'abc@gmail.com', sysdate, sysdate);

insert into baby
values
('abc', 'babe', null, null, null, '18/01/02', null, null, null, sysdate, sysdate);


select * from member;

select *
from member, baby
where member.USER_ID = baby.USER_ID;