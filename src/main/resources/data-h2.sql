-- CATEGORY Table
INSERT INTO CATEGORY (ID, CREATED_DATE, NAME)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Food');

INSERT INTO CATEGORY (ID, CREATED_DATE, NAME)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Beverages');

INSERT INTO CATEGORY (ID, CREATED_DATE, NAME)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Snacks');


-- SUB_CATEGORY Table
INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Pasta', (SELECT ID FROM CATEGORY WHERE NAME = 'Food'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Rice', (SELECT ID FROM CATEGORY WHERE NAME = 'Food'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Flour', (SELECT ID FROM CATEGORY WHERE NAME = 'Food'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Oil', (SELECT ID FROM CATEGORY WHERE NAME = 'Food'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Water', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Soda', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Juice', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Tea', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Coffee', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Milk', (SELECT ID FROM CATEGORY WHERE NAME = 'Beverages'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Chocolate', (SELECT ID FROM CATEGORY WHERE NAME = 'Snacks'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Chips', (SELECT ID FROM CATEGORY WHERE NAME = 'Snacks'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Biscuits', (SELECT ID FROM CATEGORY WHERE NAME = 'Snacks'));

INSERT INTO SUB_CATEGORY (ID, CREATED_DATE, NAME, CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Candy', (SELECT ID FROM CATEGORY WHERE NAME = 'Snacks'));


-- PRODUCT Table
INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Filiz Spaghetti', 3.75, 450,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Pasta'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Barilla Spaghetti', 6.25, 300,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Pasta'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Happy Roots Spaghetti', 22.90, 40,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Pasta'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Yayla Osmancık Rice', 15.25, 200,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Rice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Yayla Baldo Rice', 17.25, 200,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Rice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Sinangil Flour', 7.90, 250,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Flour'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Sinangil Whole Wheat Flour', 8.55, 150,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Flour'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Orkide Sunflower Oil', 21.50, 75,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Oil'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Yudum Natural Virgin Olive Oil', 60.90, 30,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Oil'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Komili Natural Olive Oil', 60.50, 30,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Oil'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Erikli Glass Water', 7.50, 500,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Water'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Kuzeyden Water', 1.50, 2000,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Water'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Saka Water', 1.75, 1500,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Water'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Beyoğlu Black Soda', 3.50, 750,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Soda'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Coca-Cola', 3.75, 1000,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Soda'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Exotic Orange', 14.75, 300,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Juice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Cappy Pulpy Orange', 6.20, 120,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Juice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Juss 100% Apple', 4.95, 150,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Juice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Meysu Mixed', 7.95, 100,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Juice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Sarıyer Lemonade', 4.45, 160,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Juice'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Lipton Tea Bags', 13.55, 120,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Tea'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Lipton Loose Leaf', 35.95, 140,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Tea'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Lipton Green Tea', 8.20, 180,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Tea'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Lipton Vitamin C Tea', 13.90, 200,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Tea'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Herby No Stress Tea', 16.90, 80,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Tea'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Kocatepe Coffee', 6.45, 130,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Nescafé 2-in-1', 8.45, 150,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Nescafé 3-in-1 Original', 9.30, 200,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Nescafé 3 in 1 Caramel', 9.30, 180,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Nescafé Latte', 9.35, 160,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Jacobs Capsule Lungo 8', 42.95, 60,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Coffee'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Danone Cocoa Milk', 13.95, 120,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Milk'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Sek 3% Milk', 7.45, 130,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Milk'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Sek Chocolate Milk', 22.50, 180,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Milk'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Ülker Pistachio', 7.90, 130,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Ülker 60% Dark', 5.35, 100,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Nestlé Damak Pistachio', 8.65, 130,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Eti Hazelnut Milk', 5.50, 140,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Godiva Domes Hazelnut', 33.60, 160,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Snickers', 12.75, 180,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chocolate'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Chips Duo', 12.00, 320,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chips'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Lays Classic', 5.99, 400,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chips'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Ruffles Originals', 8.29, 350,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chips'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Doritos Taco Spicy', 8.29, 350,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Chips'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Eti Puf Pufi Caramel', 2.25, 500,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Biscuits'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Eti Browni Intense', 2.30, 475,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Biscuits'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Ülker Çokoprens Snack', 2.30, 600,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Biscuits'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Haribo Golden Bears', 5.45, 300,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Candy'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Jelibon Sour Patch', 5.25, 350,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Candy'));

INSERT INTO PRODUCT (ID, CREATED_DATE, NAME, PRICE, STOCK_AMOUNT, SUB_CATEGORY_ID)
VALUES (SM_SEQUENCE.NEXTVAL, SYSDATE, 'Haribo Starmix', 5.45, 330,
        (SELECT ID FROM SUB_CATEGORY WHERE NAME = 'Candy'));