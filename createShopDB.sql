create database shopdb;

use shopdb;

create Table if not exists Users(
UserId int not null auto_increment,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Username varchar(20)not null unique,
constraint primary key(UserId)
);

CREATE TABLE `food` (
  `FoodId` int(11) NOT NULL AUTO_INCREMENT,
  `FoodName` varchar(20) NOT NULL,
  `Categ` varchar(20) NOT NULL,
  PRIMARY KEY (`FoodId`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lists` (
  `ListId` int(11) NOT NULL AUTO_INCREMENT,
  `ListTitle` varchar(20) NOT NULL,
  `Categ` varchar(20) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`ListId`),
  KEY `fk_lists_users` (`UserID`),
  CONSTRAINT `fk_lists_users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `listitem` (
  `ListItemId` int(11) NOT NULL AUTO_INCREMENT,
  `FoodId` int(11) NOT NULL,
  `ListID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Notes` varchar(30) DEFAULT NULL,
  `Size` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ListItemId`),
  KEY `fk_listitem_foodid` (`FoodId`),
  KEY `fk_listitem_list` (`ListID`),
  CONSTRAINT `fk_listitem_foodid` FOREIGN KEY (`FoodId`) REFERENCES `food` (`FoodId`),
  CONSTRAINT `fk_listitem_list` FOREIGN KEY (`ListID`) REFERENCES `lists` (`ListId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



insert into users values(null, 'Avi', 'Abramson', 'aviabramson');
insert into users values(null, 'Bentzy', 'Benjamin', 'bbenjamin');
insert into users values (null, 'Chana', 'Gewanter', 'cgewanter');
insert into users values(null, 'Devora', 'Davidson', 'devorad');

insert into food values (null, 'cheerios', 'grocery');
insert into food values (null, 'Carrots', 'grocery');
insert into food values (null, 'Pretzels', 'snack');
insert into food values (null, 'Broccoli', 'vegetable');
insert into food values (null, 'Flour', 'ingredient');
insert into food values (null, 'Sugar', 'ingredient');
insert into food values (null, 'Cocoa' , 'ingredient');
insert into food values (null, 'Macaroni', 'pasta');
insert into food values (null, 'Milk', 'pasta');
insert into food values (null, 'Laffy Taffy', 'candy');
insert into food values (null, 'Granola Bars', 'snack');
insert into food values (null, 'Eggs', 'ingredient');
insert into food values (null, 'Apple Juice', 'grocery');
insert into food values (null, 'Orange Juice', 'grocery');
insert into food values (null, 'Yogurt', 'grocery');
insert into food values (null, 'Potato Chips', 'snack');
insert into food values (null, 'American Cheese', 'grocery');
insert into food values (null, 'Mozarella Cheese', 'grocery');
insert into food values (null, 'Cream Cheese', 'grocery');
insert into food values (null, 'Avocado', 'fruit');
insert into food values (null, 'Plum', 'fruit');
insert into food values (null, 'Peach', 'fruit');
insert into food values (null, 'Popcorn', 'snack');
insert into food values (null, 'Lollipops', 'candy');
insert into food values (null, 'Hershey Bars', 'chocolate');
insert into food values (null, 'Hershey Bars', 'chocolate');
insert into food values (null, 'Pesek Zman', 'chocolate');
insert into food values (null, 'Chocolate Logs', 'chocolate');
insert into food values (null, 'Brownie Bars', 'snack');
insert into food values (null, 'Rugelach', 'snack');
insert into food values (null, 'Cinnamon Bukns', 'snack');
insert into food values (null, 'Sour Sticks', 'candy');
insert into food values (null, 'Donut', 'snack');
insert into food values (null, 'Soup Croutons', 'grocery');
insert into food values (null, 'Salad Croutons', 'grocery');
insert into food values (null, 'Pineapple', 'veagetable');
insert into food values (null, 'Canned Mush', 'grocery');
insert into food values (null, 'Mushrooms', 'vegetable');
insert into food values (null, 'Zuccinni', 'vegetable');
insert into food values (null, 'Parsnip', 'vegetable');
insert into food values (null, 'Sweet Potato', 'vegetable');
insert into food values (null, 'Parsley', 'vegetable');
insert into food values (null, 'Cranberry', 'fruit');
insert into food values (null, 'Snackers', 'snack');
insert into food values (null, 'Saltines', 'snack');
insert into food values (null, 'Celery', 'vegetable');
insert into food values (null, 'Strawberries', 'fruit');
insert into food values (null, 'Marinara Sauce', 'ingredient');
insert into food values (null, 'Ketchup', 'grocery');
insert into food values (null, 'Mustard', 'grocery');
insert into food values (null, 'Sour Kraut', 'grocery');
insert into food values (null, 'Hot Dog Buns', 'grocery');
insert into food values (null, 'Hamburger Buns', 'grocery');
insert into food values (null, 'Hot Dogs', 'meat');
insert into food values (null, 'Hamburgers', 'meat');
insert into food values (null, 'Soda', 'grocery');
insert into food values (null, 'Ice Cream', 'snack');
insert into food values (null, 'Waterbottle', 'grocery');
insert into food values (null, 'Brisket', 'meat');
insert into food values (null, 'Roast', 'meat');
insert into food values (null, 'Chulent Meat', 'meat');
insert into food values (null, 'Rib Meat', 'meat');
insert into food values (null, 'Chrain', 'grocery');
insert into food values (null, 'Cottage Cheese', 'grocery');
insert into food values (null, 'String Cheese', 'grocery');
insert into food values (null, 'Corn Pops', 'snack');
insert into food values (null, 'Popcorners', 'snack');
insert into food values (null, 'Corn Chips', 'snack');
insert into food values (null, 'Hot Chips', 'snack');
insert into food values (null, 'Tam-Tams', 'snack');
insert into food values (null, 'Potato', 'vegetable');
insert into food values (null, 'Lettuce', 'vegetable');
insert into food values (null, 'Salad Dressing', 'grocery');
insert into food values (null, 'Onion Rings', 'snack');

delete from food where FoodId =12;

select * from food;
delete from lists where lists.listId = 22;
select * from lists;
select * from listitem;
select * from lists inner join users on lists.userid = users.userid where users.username = 'cgewanter'
