SELECT sales.saledate, sales.amount, people.salesperson
from sales
inner join people
on people.spid=sales.spid;
select sales.saledate, sales.amount, people.salesperson
from sales
inner join people
on people.spid= sales.spid;
select sales.saledate, sales.amount, products.product
from sales
inner join products
on sales.pid=products.pid;

select sales.saledate, sales.amount, products.product, people.salesperson, people.team
from sales
inner join products on sales.pid=products.pid
inner join people on sales.spid=people.spid
where sales.amount <500 and people.team = 'delish' ;


