create table Customer(
cID int primary key auto_increment,
cName varchar(255),
cAge varchar(255) 
);

create table Orders(
oID int primary key auto_increment,
cID int,
foreign key (cID) references customer(cID),
oDate date,
oTotalPrice int
);

create table Product(
pID int primary key auto_increment,
pName varchar(255),
pPrice int);

create table OrderDetail(
oID int,
foreign key (oID) references Orders (oID),
pID int,
foreign key (pID) references Product (pID),
odQTY int); 