create table Cart
(
  id int auto_increment
    primary key,
  itemId int null,
  userId int null,
  quantity int null,
  constraint Cart_id_uindex
  unique (id)
)
  engine=InnoDB
;

create table Categories
(
  id int auto_increment
    primary key,
  name varchar(255) null,
  displayName varchar(255) null,
  isEnabled tinyint(1) default '1' null,
  constraint Category_id_uindex
  unique (id)
)
  engine=InnoDB
;

create table ItemDetails
(
  id int auto_increment
    primary key,
  itemId int not null,
  `key` varchar(255) null,
  value varchar(255) null
)
  engine=InnoDB
;

CREATE TABLE Items
(
  id            INT AUTO_INCREMENT
    PRIMARY KEY,
  name          VARCHAR(255)           NOT NULL,
  price         FLOAT                  NOT NULL,
  description   VARCHAR(1000)          NULL,
  sellerId      INT                    NULL,
  offerId       INT                    NULL,
  subCategoryId INT                    NULL,
  url           VARCHAR(255)           NULL,
  brand         VARCHAR(255)           NULL,
  height        FLOAT                  NULL,
  width         FLOAT                  NULL,
  quantity      INT                    NULL,
  isEnabled     TINYINT(1) DEFAULT '1' NOT NULL,
  itemBarcode   INT DEFAULT '0'        NULL,
  itemColour    VARCHAR(255)           NULL,
  CONSTRAINT Items_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;




-- auto-generated definition
CREATE TABLE Offers
(
  id                 INT AUTO_INCREMENT
    PRIMARY KEY,
  offerType          INT                           NULL,
  discountPercentage FLOAT DEFAULT '-1'            NULL,
  price              INT DEFAULT '-1'              NULL,
  x                  INT DEFAULT '-1'              NULL,
  y                  INT DEFAULT '-1'              NULL,
  startDate          DATETIME                      NULL,
  endDate            DATETIME                      NULL,
  dealId             VARCHAR(255) DEFAULT 'dealId' NULL,
  CONSTRAINT Offers_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;

-- auto-generated definition
CREATE TABLE OrderItems
(
  id        INT AUTO_INCREMENT
    PRIMARY KEY,
  orderId   INT               NULL,
  itemId    INT               NULL,
  itemPrice FLOAT             NULL,
  quantity  INT               NULL,
  status    INT DEFAULT '301' NULL,
  rating    INT DEFAULT '-1'  NULL
)
  ENGINE = InnoDB;



create table Orders
(
  id int auto_increment
    primary key,
  userId int not null,
  itemsSubTotal int default '0' null,
  shippingCharges int default '0' null,
  deliveryAddressId int null,
  orderStatus int null,
  promotionApplied int default '0' null,
  constraint Orders_id_uindex
  unique (id)
)
  engine=InnoDB
;

CREATE TABLE Sellers
(
  id            INT AUTO_INCREMENT
    PRIMARY KEY,
  userName      VARCHAR(255)           NOT NULL,
  emailId       VARCHAR(255)           NOT NULL,
  password      VARCHAR(255)           NOT NULL,
  isEnabled     TINYINT(1) DEFAULT '1' NULL,
  storeName     VARCHAR(255)           NULL,
  mobileNumber  VARCHAR(10)            NULL,
  streetAddress VARCHAR(255)           NULL,
  landmark      VARCHAR(255)           NULL,
  city          VARCHAR(255)           NULL,
  state         VARCHAR(255)           NULL,
  pincode       VARCHAR(6)             NULL,
  country       VARCHAR(255)           NULL,
  totalRatings  INT DEFAULT '0'        NULL,
  ratingCount   INT DEFAULT '0'        NULL,
  CONSTRAINT Sellers_id_uindex
  UNIQUE (id),
  CONSTRAINT Sellers_emailId_uindex
  UNIQUE (emailId)
)
  ENGINE = InnoDB;


create table UserAddresses
(
  id int auto_increment
    primary key,
  fullName varchar(255) not null,
  mobileNumber varchar(10) not null,
  pincode varchar(6) not null,
  streetAddress varchar(255) not null,
  landmark varchar(255) not null,
  city varchar(255) not null,
  state varchar(255) not null,
  userId int null
)
  engine=InnoDB
;

CREATE TABLE Users
(
  id                    INT AUTO_INCREMENT
    PRIMARY KEY,
  userName              VARCHAR(255)           NOT NULL,
  emailId               VARCHAR(255)           NOT NULL,
  password              VARCHAR(255)           NOT NULL,
  isEnabled             TINYINT(1) DEFAULT '1' NOT NULL,
  defaultAddressId      INT DEFAULT '-1'       NULL,
  amazonPayBalance      INT DEFAULT '0'        NULL,
  emailVerificationHash VARCHAR(255)           NULL,
  CONSTRAINT Users_id_uindex
  UNIQUE (id),
  CONSTRAINT users_emailId_uindex
  UNIQUE (emailId)
)
  ENGINE = InnoDB;




CREATE TABLE SubCategories
(
  id          INT AUTO_INCREMENT
    PRIMARY KEY,
  displayName VARCHAR(255)           NULL,
  categoryId  INT                    NOT NULL,
  isEnabled   TINYINT(1) DEFAULT '0' NULL,
  CONSTRAINT SubCategories_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;

CREATE TABLE Transactions
(
  id        INT AUTO_INCREMENT
    PRIMARY KEY,
  orderId   INT      NOT NULL,
  amount    INT      NULL,
  date      DATETIME NULL,
  accountId INT      NOT NULL,
  status    INT      NOT NULL,
  CONSTRAINT Transactions_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;

CREATE TABLE Accounts
(
  id       INT AUTO_INCREMENT
    PRIMARY KEY,
  userId   INT              NOT NULL,
  name     VARCHAR(50)      NULL,
  number   INT              NOT NULL,
  amount   INT              NULL,
  sellerId INT DEFAULT '-1' NULL,
  CONSTRAINT Accounts_id_uindex
  UNIQUE (id),
  CONSTRAINT Accounts_number_uindex
  UNIQUE (number)
)
  ENGINE = InnoDB;



CREATE TABLE WishList
(
  id     INT AUTO_INCREMENT
    PRIMARY KEY,
  userId INT NULL,
  itemId INT NULL,
  CONSTRAINT WishList_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;

-- auto-generated definition
CREATE TABLE Compare
(
  id     INT AUTO_INCREMENT
    PRIMARY KEY,
  itemId INT NULL,
  userId INT NULL,
  CONSTRAINT Compare_id_uindex
  UNIQUE (id)
)
  ENGINE = InnoDB;




