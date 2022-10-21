select product0_.id as id1_1_, 
product0_.created_date as created_2_1_, 
product0_.description as descript3_1_, 
product0_.name as name4_1_, 
product0_.price as price5_1_, 
product0_.shop_id as shop_id6_1_, 
product0_.stock as stock7_1_ 
from product product0_ 
where product0_.name 
like 'Puma'


select product0_.id as id1_1_, 
product0_.created_date as created_2_1_, 
product0_.description as descript3_1_, 
product0_.name as name4_1_, 
product0_.price as price5_1_, 
product0_.shop_id as shop_id6_1_, 
product0_.stock as stock7_1_ 
from product product0_ 
where product0_.id= '8a4be78e8334beee018334c31e590001'


select customer.name, customer.email , count(orders.id) as count_order 
from orders left join customer 
on customer.id =orders.customer_id 
group by customer.id
