SELECT * FROM market.index;

-- DROP TABLE `market`.`index`;

CREATE TABLE `market`.`index` (
`No` INT NOT NULL AUTO_INCREMENT,
`DateTime` VARCHAR(45) NULL,
`Nation` VARCHAR(45) NULL,
`Price` VARCHAR(45) NULL,
PRIMARY KEY (`No`));