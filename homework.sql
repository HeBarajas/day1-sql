--1. How many actors are there with the last name ‘Wahlberg’? 
select * from actor
where last_name = 'Wahlberg';

--answer "2"

--2. How many payments were made between $3.99 and $5.99? 
select count(*)
from payment
where amount between 3.99 and 5.99;

--answer "5607"

--3. What film does the store have the most of? (search in inventory) 
select film_id , count(*)
from inventory
group by film_id
order by count desc;

--answer "film_id, movie is Crossroads Casualties"

--4. How many customers have the last name ‘William’? 
select last_name , count(*)
from customer
where last_name = 'William'
group by last_name 
order by count desc;

-- answer "none"

--5. What store employee (get the id) sold the most rentals? 
select staff_id, count(*)
from payment
group by staff_id 
order by count desc; 

-- answer "Staff ID: 2,  Jon"

--6. How many different district names are there? 
select count(distinct district)
from address;

-- answer "378"

--7. What film has the most actors in it? (use film_actor table and get film_id) 
select film_id, count(*) as total_actors
from film_actor fa 
group by film_id 
order by total_actors desc;

-- answer 'film_id is 508 and 15 total actors'

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select *
from customer
where last_name like '%es';

-- answer "13"

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
select amount, count(*)
from payment
where customer_id between 380 and 430
group by amount
having count(*) > '250'
order by amount

--answer '3'

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
select rating, count(*)
from film
group by rating

-- answer "5 categories, PG-13 has the most"

