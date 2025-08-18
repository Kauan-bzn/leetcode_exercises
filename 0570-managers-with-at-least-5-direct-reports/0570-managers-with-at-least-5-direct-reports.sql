# Write your MySQL query statement below
select Employee.name
from Employee inner join (
    select managerId, count(managerId) as contagem
    from Employee
    group by managerId
    having contagem >=5
    ) as Managers
    on Employee.id = Managers.managerId 
