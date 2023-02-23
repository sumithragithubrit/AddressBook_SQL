#--------------------------------------------------------------- ------UC1-----------
create database addressBookServices;
 use  addressBookServices; 
  #---------------------------------------------------------------------UC2--
 create table AddressBook(
 firstName varchar(50) not null,
 lastName varchar(50) not null,
 address varchar(50) not null,
 city varchar(50) not null,
 state varchar(50) not null,
 zipCode int not null,
 phoneNumber varchar(50)  not null,
 email varchar(50) not null
 );
 #----------------------------------------------------------------------------------UC3--
 insert into AddressBook(firstName , lastName , address , city , state , zipCode , phoneNumber , email)
 values("sumithra" , "buddareddy" , "Andrapradesh" , "Chittor" , "AP" , 518765 , 970675356 , "sumi@123" );
 
  insert into AddressBook(firstName , lastName , address , city , state , zipCode , phoneNumber , email)
 values("sangeetha" , "posam" , "Whitefield" , "Banglore" , "karnataka" , 518787 , 786543987 , "san@123" );
 
  insert into AddressBook(firstName , lastName , address , city , state , zipCode , phoneNumber , email)
 values("geetha" , "undala" , "hydrabad" , "machilipatnam" , "Telangana" , 523765 , 897658035 , "geetha@123" );
 
  insert into AddressBook(firstName , lastName , address , city , state , zipCode , phoneNumber , email)
 values("manoj" , "chinnareddyreddy" , "madanapalli" , "kadapa" , "andrapradhesh" , 517765 , 970686056 , "manoj@123" );
 
  insert into AddressBook(firstName , lastName , address , city , state , zipCode , phoneNumber , email)
 values("kumar" , "peddareddy" , "madyapradesh" , "pradesh" , "madyapradhesh" , 458765 , 987653456 , "kumar@123" );
 
 desc AddressBook;
 
 select * from AddressBook;
 
 SET SQL_SAFE_UPDATES=0;
#-------------------------------------------------------------------------------UC4--
 update AddressBook set phoneNumber = "634678296" where firstName="sumithra";
 select * from AddressBook;
 #-------------------------------------------------------------------------------UC5--
 delete from AddressBook where firstname = "kumar";
select * from AddressBook;
#--------------------------------------------------------------------------------UC6--
select * from AddressBook where city ="chittor";
select * from AddressBook;
#--------------------------------------------------------------------------------UC7----
select city, count(*) from AddressBook group by city;
select state, count(*) from AddressBook group by state;
select * from AddressBook;
#---------------------------------------------------------------------------------UC8--
select * from AddressBook where city ="Banglore" order by firstname ;
select * from AddressBook;
#--------------------------------------------------------------------------------- UC9--
alter table  AddressBook add type varchar(50) after firstname;
select * from AddressBook;
#--------------------------------------------------------------------------------- UC10--
update AddressBook set type = "Family";
update AddressBook set type = "Friends" where firstname = "Sangeetha";
update AddressBook set type = "Family" where firstname = "manoj";
update AddressBook set type = "Friends" where firstname = "kumar";
update AddressBook set type = "Profession" where firstname = "geetha";
update AddressBook set type = "Profession" where firstname = "sumithra";
select * from AddressBook;
#---------------------------------------------------------------------------------- UC11--
select type, count(*) from AddressBook group by phonenumber;