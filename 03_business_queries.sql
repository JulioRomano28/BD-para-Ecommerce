-- 1. Receita Total Mensal (Agregação simples com formatação de data)
SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS Mes_Ano,
    SUM(TotalAmount) AS Receita_Total,
    COUNT(OrderID) AS Total_Pedidos
FROM Orders
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Mes_Ano;

-- 2. Ranking dos Melhores Clientes usando Window Functions (Avançado)
WITH CustomerSpends AS (
    SELECT 
        c.CustomerID,
        c.FirstName + ' ' + c.LastName AS NomeCompleto,
        SUM(o.TotalAmount) AS GastoTotal
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.FirstName, c.LastName
)
SELECT 
    CustomerID,
    NomeCompleto,
    GastoTotal,
    RANK() OVER(ORDER BY GastoTotal DESC) AS Rank_Cliente
FROM CustomerSpends;

-- 3. Curva ABC de Produtos (Quais produtos trazem mais receita?)
WITH ProductRevenue AS (
    SELECT 
        p.ProductName,
        SUM(oi.Quantity * oi.UnitPrice) AS ReceitaProduto
    FROM Products p
    JOIN OrderItems oi ON p.ProductID = oi.ProductID
    GROUP BY p.ProductName
)
SELECT 
    ProductName,
    ReceitaProduto,
    SUM(ReceitaProduto) OVER(ORDER BY ReceitaProduto DESC) AS ReceitaAcumulada,
    CAST(SUM(ReceitaProduto) OVER(ORDER BY ReceitaProduto DESC) / 
         SUM(ReceitaProduto) OVER() * 100 AS DECIMAL(5,2)) AS PorcentagemAcumulada
FROM ProductRevenue;