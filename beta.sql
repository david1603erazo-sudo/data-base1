créate table user(
id  SERIAl  primera key;
IDE_NUMBER TEXT NOT NULL;
FIRNAME  varchar (30) not null;
lasname varchar (30) not null;
mobile_number text not null
address text null,
email text not null unique,
password text not null,
status boolean default true,
create_at timestampiz default now ()
updated_at timestampiz default now ()
delete_at timestampiz default now ()

);

CREATE TABLE users(id SERIAL PRIMARY KEY, ide_number text not null, firstname text not null, lastname text not null, mobile_number text not null, address text null, email text not null unique, password text not null, status boolean default true, creat_at timestamptz default now(), updated_at timestamptz default now(), deleted_at timestamptz default now() );


-- queri par ainsertar datos 

insert into users(ide_number,firstname,lastname,mobile_number,email,password) values('87067555','joan','ayala','3122429021','joan@mail.com','1234');	