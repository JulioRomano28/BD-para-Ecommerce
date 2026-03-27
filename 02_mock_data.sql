INSERT INTO Customers (FirstName, LastName, Email, RegistrationDate)
VALUES ('João', 'Silva', 'joao@email.com', '2023-01-15'),
       ('Maria', 'Santos', 'maria@email.com', '2023-02-20'),
       ('Carlos', 'Oliveira', 'carlos@email.com', '2023-03-10');

INSERT INTO Products (ProductName, Category, Price)
VALUES ('Notebook', 'Eletrônicos', 3500.00),
       ('Smartphone', 'Eletrônicos', 2000.00),
       ('Cadeira Ergonomica', 'Móveis', 800.00);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES (1, '2023-05-10 14:30:00', 3500.00),
       (2, '2023-05-12 10:15:00', 2800.00),
       (1, '2023-06-01 09:00:00', 800.00);

INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice)
VALUES (1, 1, 1, 3500.00),
       (2, 2, 1, 2000.00),
       (2, 3, 1, 800.00),
       (3, 3, 1, 800.00);