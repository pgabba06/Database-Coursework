INSERT INTO item (id, name, price, seller) VALUES
(1, 'Book', 5.20, 'jemma123'),
(2, 'Football Cards', 2.50, 'Cristiano Billy'),
(3, 'Wallet', 15.01, 'Richard Miles'),
(4, 'Watch', 59.34, 'Lionel Clean'),
(5, 'Clock', 5.79, 'Bobby Bookery');

INSERT INTO customer (id, name, postcode) VALUES
(1,'Brian Bob', 'W12 4BD'),
(2,'Antony Rob', 'D14 3CF'),
(3,'Daniel Cena', 'E39 7CD'),
(4,'Simon Mitch', 'B57 5FG'),
(5,'Stuart Sean', 'H32 4FC');

INSERT INTO rating (id, item_id, customer_id, date_time, stars) VALUES
(1,1,1,'2025-11-10 12:46:53', 3),
(2,2,2,'2025-11-09 03:27:10', 5),
(3,3,3,'2025-11-15 13:34:12', 4),
(4,4,4,'2025-11-23 09:45:30', 2),
(5,5,5,'2025-11-04 11:56:20', 1);

INSERT INTO invoice (id, item_id, customer_id, quantity, cost) VALUES
(1,1,1,3,54.71),
(2,2,2,1,32.23),
(3,3,3,2,4.12),
(4,4,4,4,64.32),
(5,5,5,6,72.31);