
#------------UC1-----------------------

Create database AddressBookService;
show databases;
use AddressBookService;


#------------UC2-----------------------

create table AddressBook
(
firstname  varchar(30) not null primary key,
lastname  varchar(30) not null,
address  varchar(50) not null,
city  varchar(20) not null,
state  varchar(25) not null,
zip int not null ,
phone varchar(25) not null,
email  varchar(25) not null 
);
desc AddressBook;

#------------UC3-----------------------

select *from AddressBook;
insert into AddressBook(firstname,lastname,address,city,state,zip,phone,email)
values('Megha','Angadi','Vidyagiri','Bagalkot','Karnataka',587103,'9874584458','megha@gmail.com');
 
insert into AddressBook(firstname,lastname,address,city,state,zip,phone,email)
values('Kittu','Arabi','Vidyagiri','Hubbali','Karnataka',587108,'9874587412','kittu@gmail.com');

insert into AddressBook(firstname,lastname,address,city,state,zip,phone,email)
values('Sachin','Math','Teggi','Belagavi','Karnataka',587102,'6874584458','sachin@gmail.com');

insert into AddressBook(firstname,lastname,address,city,state,zip,phone,email)
values('Gouri','Angadi','Navanagar','Bijapur','Karnataka',587105,'7874584458','gouri@gmail.com');

 #------------UC4-----------------------
 
 select *from AddressBook;
 update AddressBook set city='Hubbali', phone='6360898745' where firstname='Megha';
 
 
#------------UC5-----------------------

select *from AddressBook;
delete from AddressBook where firstname='Megha';

#------------UC6-----------------------
 
select *from AddressBook where city='Hubbali'; 
select *from AddressBook where state='Karnataka'; 
select *from AddressBook where city='Hubbali' or state='Goa';  
  
#------------UC7-----------------------

select count(*)from AddressBook where city='Hubbali'; 
select count(*)from AddressBook where state='Karnataka'; 

#------------UC8-----------------------
   
select firstname,city from AddressBook  order by city;

#------------UC9-----------------------
  
alter table AddressBook add name varchar(30) not null ,add type varchar(30) not null;
desc AddressBook;
select *from AddressBook;
update AddressBook set name='family', type='Sister' where firstname='Kittu';
update AddressBook set name='friend', type='college' where firstname='Sachin';
  
#------------UC10-----------------------

select count(*) as Number_of_person from AddressBook where type='college';
      
#------------UC11-----------------------	
      