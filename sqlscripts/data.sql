CREATE TABLE IF NOT EXISTS customer (
    customer_id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    state TEXT NOT NULL,
    city TEXT NOT NULL,
    email TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    address TEXT NOT NULL
);



CREATE TABLE IF NOT EXISTS orders (
    order_id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    order_value NUMERIC(10, 2) NOT NULL,
    priority TEXT NOT NULL,
    order_date DATE NOT NULL,
    customer_id UUID NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)

);


INSERT INTO customer (customer_id, name, state, city, email, created_at, address)
VALUES ('bb559489-b346-46b2-a15b-5b7d4ddc78c4', 'Victoria Romero', 'Maryland', 'East Stacy', 'travis61@example.org', '2023-04-26 14:09:00', '21179 Audrey Locker Suite 928');


INSERT INTO customer (customer_id, name, state, city, email, created_at, address)
VALUES ('1298fe7d-6586-4554-8f36-3db482ba94a5', 'Nathaniel Tate', 'Florida', 'North Kelly', 'sharon99@example.com', '2023-04-26 14:09:00', '591 Thomas Heights Suite 103');


INSERT INTO customer (customer_id, name, state, city, email, created_at, address)
VALUES ('9c4eeb2a-1d04-4579-9f14-b13b703e9d9a', 'Ella Collins', 'California', 'West Cliffside', 'ella.collins@example.com', '2023-04-20 12:00:00', '1029 Vista Parkway Apt 304');


INSERT INTO customer (customer_id, name, state, city, email, created_at, address)
VALUES ('512f8b17-2d60-4ad8-8c94-7ecb38d03e51', 'Liam Johnson', 'Texas', 'South Pine', 'liam.johnson@example.com', '2023-04-15 09:00:00', '4678 Oakwood Drive');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('1e6f81e2-f1b4-464b-9af6-8cbd1bd08c1a', 'Half see situation.', 568.00, 'HIGH', '2023-04-21', 'bb559489-b346-46b2-a15b-5b7d4ddc78c4');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('e8939a8f-1476-4b46-bf24-fd33e3af9832', 'Sister apply.', 862.00, 'HIGH', '2023-04-08', 'bb559489-b346-46b2-a15b-5b7d4ddc78c4');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('79e3edc5-dcbc-4604-900e-d6a7af925f12', 'Maybe resource.', 282.00, 'LOW', '2023-04-23', '1298fe7d-6586-4554-8f36-3db482ba94a5');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('d304f7cb-6fa8-45b6-a6cb-3d3eb1b1f66f', 'Quick response.', 450.00, 'MEDIUM', '2023-04-10', '9c4eeb2a-1d04-4579-9f14-b13b703e9d9a');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('a459d9e4-7e95-4c71-98af-bdd23bf67f31', 'Task accomplish.', 120.00, 'LOW', '2023-04-12', '512f8b17-2d60-4ad8-8c94-7ecb38d03e51');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('33c0d6d8-d7d3-4f6c-9172-8328b13dc7df', 'Order approved.', 789.00, 'HIGH', '2023-04-18', '9c4eeb2a-1d04-4579-9f14-b13b703e9d9a');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('f11e2db1-a0b4-4c21-b31d-e62066a11f33', 'Delivery status.', 990.00, 'HIGH', '2023-04-22', '512f8b17-2d60-4ad8-8c94-7ecb38d03e51');



INSERT INTO orders (order_id, name, order_value, priority, order_date, customer_id)
VALUES ('6c4ae4e5-fc73-44d6-b85e-512ac073c4c7', 'Payment received.', 340.00, 'MEDIUM', '2023-04-09', '1298fe7d-6586-4554-8f36-3db482ba94a5');
