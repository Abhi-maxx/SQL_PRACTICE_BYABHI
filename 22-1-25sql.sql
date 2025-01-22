create table Foreigninkey  (
fid int primary key ,
fname varchar(40),
fage int ,
);

create table orderdetails2 (
orderid int primary key ,
fid int ,
foreign key (fid) references Foreigninkey (fid)
ON DELETE CASCADE                   -- If the customer is deleted, delete the related orders
    ON UPDATE CASCADe             
)
;

insert into Foreigninkey values (11,'Abhijeeet Divekar',22);
insert into Foreigninkey values (13,'Raju',22);
insert into Foreigninkey values (14,'Desai',09);


iNSERT INTO orderdetails2 (orderid, fid) 
VALUES 
    (101, 11),
    (102, 13),
    (103, 14);



	SELECT orderdetails2.orderid, Foreigninkey.fname
FROM orderdetails2
INNER JOIN Foreigninkey
ON orderdetails.fid = Foreigninkey.fid;




SELECT orderdetails2.orderid, Foreigninkey.fname, Foreigninkey.fage
FROM orderdetails2
INNER JOIN Foreigninkey
ON orderdetails2.fid = Foreigninkey.fid;