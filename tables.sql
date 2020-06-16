create database RestaurantSystem;
use RestaurantSystem;

create table customers(
CustomerID int not null,
first_name varchar(30),
last_name varchar(30),
phoneNO varchar (20),
Email varchar(100),
Primary key(CustomerID)
);

create table chefs(
chefID int not null,
first_name varchar(30),
last_name varchar(30),
phoneNO varchar (20),
salary int,
primary key(chefID)
);


create table waiters(
waiterID int not null,
first_name varchar(30),
last_name varchar(30),
phoneNO varchar (20),
salary int,
primary key(waiterID)
);


create table cashiers(
cashierID int not null,
first_name varchar(30),
last_name varchar(30),
phoneNO varchar (20),
salary int,
primary key(cashierID)
);


create table categories(
categoryID int not null,
category_name varchar(30),
price int,
primary key(categoryID)
);

create table orders(
orderID int not null,
catID int not null,
custID int not null,
waitID int not null,
cashID int not null,
cheID int not null,
primary key(orderID),
foreign key (catID) references categories(categoryID),
foreign key (custID) references customers(CustomerID),
foreign key (waitID) references waiters(waiterID),
foreign key (cashID) references cashiers(cashierID),
foreign key (cheID) references chefs(chefID),
);



