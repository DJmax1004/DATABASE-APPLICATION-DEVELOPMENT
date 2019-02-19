select department_id, job_id, count(*) qtd
from employees
group by department_id, job_id
order by 1,job_id,qtd;

select department_name,job_id,count(*) qtd
from employees e inner join departments d
on (d.department_id=e.department_id)
group by department_name,job_id
order by 1,job_id,qtd;

select department_name,job_id,count(*) qtd
from employees e inner join departments d
on (d.department_id=e.department_id)
where department_name like 'A%'
group by department_name,job_id
order by 1,job_id,qtd;

select department_name,job_id,count(*) qtd
from employees e inner join departments d
on (d.department_id=e.department_id) 
where d.department_name like 'S%'
group by department_name,job_id
having count(*) > 4
order by 1;



select max(avg(salary))
from employees
group by department_id;
