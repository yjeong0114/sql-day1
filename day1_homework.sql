--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’? 2

select count(*) from actor
where last_name = 'Wahlberg'


--2. How many payments were made between $3.99 and $5.99?

select count(*) from payment
where amount between 2.00 and 5.99; 


--3. What film does the store have the most of? (search in inventory)
select count(inventory.film_id), film.title  
from inventory
full join film 
on inventory.film_id  = film.film_id 
group by inventory.film_id, film.title 
order by count(inventory.film_id) desc;


--4. How many customers have the last name ‘William’? 0

select count(*) from customer 
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals? 1 - 8040

select staff_id, count(*) 
from rental
group by staff_id
order by count(*) desc;

--6. How many different district names are there? 378

select district
from address
group by district;

--7. What film has the most actors in it? (use film_actor table and get film_id) film_id 508 - 15 actors
select film_id, count(*)
from film_actor
group by film_id
order by count(*) desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 13

select count(*) 
from store
full join customer
on store.store_id  = customer.store_id
where last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
--with ids between 380 and 430? (use group by and having > 250) 3

select amount, count(*) 
from payment
where customer_id between 300 and 430
group by amount
having count(*) > 250;


--10. Within the film table, how many rating categories are there? 
--And what rating has the most movies total? 5 ratings, PG-13 has the most

select rental_rate, count(*)
from film
group by rental_rate;

