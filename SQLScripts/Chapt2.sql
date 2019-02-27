
--- The select query
--- Criteria or filtering with the comparison operators
--- Computed Fields
--- Fully Qualified Query
--- Functions
--- Grouping
--- Sorting
--- Joining Tables
--- Updating data
--- Deleting Data
--- Make a Table
--- union
--- difference

--basic select query
-- The "*" is a shorthand way to retrieve all the columns
select * from customer

--computing a field
select customername as cname,creditlimit, balance, 
creditlimit-balance as availbalance  from customer

--concatenating a string
select lastname + ' ' + firstname as fullname from rep

--select with a qualifiying column name [Schema.table.column]
select dbo.customer.CustomerName, dbo.customer.CreditLimit 
from customer

--select without qualifying the column
select CustomerName, CreditLimit from customer

--Sample query for count
select count(*) from customer where city = 'Grove'

--Using a simple criteria
select * from customer where city = 'Grove'

--Compound Criteria with comparison operators
-- >, >= , <, <=, =, != (not equal)
select * from Customer where Balance >= 2000 or City= 'Fullton'

--another example
select * from Customer where customername = 'Cress Store'  
or City= 'Mesa' and Balance >= 2500

select * from Customer where customername != 'Cress Store'  
or City= 'Mesa' and Balance >= 2500

--null is a special case, use [column] is null
select * from customer where city is null

--isnull is an operator that checks the column 
--for null and if true substitutes the next value after the comma
select * from Customer where isnull(city,'') = ''

--to select records that are not null, you have to use the following format
select * from customer where city is not null

--Get the balance of all customers into a total summarized value 
--using the sum function
select sum(balance) as allBalance from customer

--Lets get the average creditlimit using the avg function
select AVG(creditlimit) as avglimit from customer


--using TOP gives the top N records
-- you still need to specify the columns
select top 5 * from customer 
select top 10 customernum,customername from customer

--using top with a sort allows you to get the TOP N records
-- or the bottom N records
select top 5 * from customer
order by customername asc

--grouping. Group records that have a similar characteristic
--Lets get the average balancer per city for our customers
select city, avg(balance) from customer
group by city

-- Find the max balance per City .
select city, max(balance) 
 as maximumBalance  from customer
group by city 

--sorting
select * from customer
order by city asc ,customername desc

--Joins allows us to query the records from multiple tables together
--TO Join: we need
-- 1) the tables to join
-- 2) the columns to join by

--inner join or natural join: records that join on both tables
select customername, firstname, lastname ,customer.repnum, rep.repnum, rep.LastName
from customer inner join rep
on customer.repnum = rep.repnum

-- left outer join: records from the table on left side
select customername, firstname, lastname ,customer.repnum, rep.repnum
from customer left outer join rep
on customer.repnum = rep.repnum

-- right outer joiner: records from table on right side
select customername, firstname, lastname ,customer.repnum, rep.repnum
from customer right outer join rep
on customer.repnum = rep.repnum

--full outer join: both left and right koin
select customername, firstname, lastname ,customer.repnum, rep.repnum
from customer full outer join rep
on customer.repnum = rep.repnum

--inner join using a where clause format
select customername, firstname, lastname 
from customer, rep
where customer.repnum = rep.repnum

--joining 3 tables example
select customername, firstname,lastname , ordernum, orderdate
from 
rep inner join customer 
on rep.repnum = customer.repnum
		inner join orders
		on customer.CustomerNum = orders.CustomerNum

--Insert statement: allows you to add data
insert into customer
(customernum, customername)
values
(99, 'Home Depot')

--More join examples

--multiple table join
select customer.customernum, customername, customer.city, 
firstname as repFirst, lastname as repLast, OrderDate
from (customer inner join rep
on customer.repnum = rep.RepNum) inner join orders
	on customer.customernum = orders.customernum

--left
select customer.customernum, customer.repnum,customername, customer.city, 
firstname as repFirst, lastname as repLast
from (customer left join rep
on customer.repnum = rep.RepNum)

--inner
select customer.customernum, customer.repnum,customername, customer.city, 
firstname as repFirst, lastname as repLast
from (customer inner join rep
on customer.repnum = rep.RepNum)

--delete: allows you to remove the records

--lets add test data
insert into rep
(repnum, lastname,firstname)
values
(20,'testlast','testfirst')

--lets delete the data
delete from rep
where repnum = '20'


-- insert all the columns (no need to specify the columns)
insert into rep
values
('20','Smith','John','123 Street','Miami','FL','33012',5.5, 4.2)

--insert a record with partial values
insert into rep
(repnum,lastname,firstname)
values
('99','Smith','John')


--update: allows to change an EXISTING record
--record 99 must exist, add your own record
update rep
set City = 'newcity',
state = 'FL'
where repnum = '99' --this is how we find the records to update


--make-a-table query: The SELECT INTO statement allows a query to be
--executed and then puts the results into a brand new table
select * into AnalystOrderline --this is the new table
from orderline
where QuotedPrice > 100

--review our new table
select * from AnalystOrderline

--Drop command: if you need to delete the table AND its data, use DROP
--BE CAREFUL: This completely removed the table
drop table AnalystOrderline

--Union statement: combines the contents of multiple queries
select OrderNum, QuotedPrice from AnalystOrderline
union
select OrderNum, QuotedPrice from orderline

--union all:combines conntents of multiple queries shows duplicate records
select OrderNum, QuotedPrice from AnalystOrderline
union all
select OrderNum, QuotedPrice from orderline