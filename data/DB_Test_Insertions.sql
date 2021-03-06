USE `deliveryfood`;

INSERT INTO `Cuisine` VALUES
  (1,'Brazilian'),
  (2,'Chinese'),
  (3,'Korean'),
  (4,'Italian'),
  (5,'French');

  INSERT INTO `User` VALUES
  (1,'Matt','778-123-1234','matt@gmail.com','C','$2y$10$Hghjd8hxiJBFKDqEpkdkxOn..a/j4e8M4r.4nIGuLIKckhBqPikSi',null),
  (2,'Jake','778-321-1234','jake@gmail.com','C','$2y$10$Hghjd8hxiJBFKDqEpkdkxOn..a/j4e8M4r.4nIGuLIKckhBqPikSi',null),
  (3,'chineseFood','778-321-8888','chineserestaurant@gmail.com','B','$2y$10$Hghjd8hxiJBFKDqEpkdkxOn..a/j4e8M4r.4nIGuLIKckhBqPikSi',2),
  (4,'VitoriaSteakhouse','778-321-0000','vitoriarestaurant@gmail.com','B','$2y$10$Hghjd8hxiJBFKDqEpkdkxOn..a/j4e8M4r.4nIGuLIKckhBqPikSi',1),
  (5,'Myst','604-123-4567','myst@gmail.com','B','$2y$10$Hghjd8hxiJBFKDqEpkdkxOn..a/j4e8M4r.4nIGuLIKckhBqPikSi',2);

  INSERT INTO `Address` VALUES
  (1,'1000 1st Street','Apt 601','Vancouver','BC','V1A1A1',1),
  (2,'1500 2nd Street','Apt 23','Vancouver','BC','V1A9Z9',2);

  INSERT INTO `Menu` VALUES
  (1,'Barbecue','Top sirloin AAA grilling steak, brazilian style','1kg',25.90,'A',4),
  (2,'Sweet and Sour Pork','Slowly marinated pork and sweet and sour sauce','400g',9.90,'A',3),
  (3,'Tropeiro beans','Traditional brazilian beans recipe','1kg',9.90,'A',4),
  (4,'Kung Pao chicken','Carefully prepared chicken on the special house sauce','500g',13.50,'A',3),
  (5,'Feijoada','Black beans boiled with pork and seasoned','for 2 person',23.50,'A',3),
  (6,'Stir fried egg noodle','Choose from chicken, beef, shrimp','it serves 2 person',11.80,'A',5);

  /*INSERT INTO `PlaceOrder` VALUES
  (1,3,1,2,1,9.90),
  (1,3,1,4,2,27),
  (2,4,2,1,1,25.90);
*/