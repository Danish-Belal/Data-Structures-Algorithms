# Write your MySQL query statement below
select e.name as "Employee", d.name as "Department", e.salary 
    from Employee e inner join Department d on e.departmentId = d.id 
    where (e.departmentId, e.salary) IN (select departmentId, max(salary) from Employee group by departmentId);