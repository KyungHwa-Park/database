drop table simple_list cascade constraints;

create table record(
    id              number                          primary key,
    reg_date        date                            default(sysdate),
    sleep_time      timestamp(0)                    not null,
    wakeup_time     timestamp(0)                    not null,
    total_time      interval day(3) to second(4),
    day_night       varchar2(30)                    not null
            check (day_night in ('DAY', 'NIGHT')),
    memo            clob,
    update_date     date                            default(sysdate)
);

drop sequence       record_seq;
create sequence     record_seq;




drop table detail_list cascade constraints;

create table detail_list(
    id              number              primary key,
    memo            varchar2(500),
    reg_date        date                default(sysdate),
    update_date     date                default(sysdate),
    constraint simple_list foreign key(id) references simple_list(id)
);

insert into simple_list
(id, reg_date, sleep_time, wakeup_time, day_night, update_date)
values
(1, sysdate, sysdate, sysdate, 'day', sysdate);

update simple_list set total_time = (wakeup_time-sleep_time) day(3) to second(4);
    
select * from simple_list;

select sleep_time, trunc(sleep_time, 'HH:MI')
from simple_list;
    