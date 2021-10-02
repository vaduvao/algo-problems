SELECT e1.Name AS Employee
FROM Employee e1
JOIN Employee e2
ON e1.ManagerID = e2.Id AND e1.Salary > e2.Salary