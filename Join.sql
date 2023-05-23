select 
		t_actor.first_name,
		t_actor.last_name,
		film.title,
        film.description as 'descriçao',
        category.name as 'categoria'
from actor as t_actor

left join film_actor
on t_actor.actor_id = film_actor.actor_id 

left join film
on film_actor.film_id = film.film_id

left join film_category 
on film_category.film_id = film.film_id

left join category
on category.category_id = film_category.category_id;


