# book-my-show
This is a simple Databse design for book my show. 
These are the description for the design created. 


The list of entity and their attributes.
	1. Theatre :
		The attributes of this entity are : 
			a. theatre_id (primary key)
            b. theatre_name
            c. location
            d. cancel_able
    2. Movie : 
		The attributes of this entity are : 
			a. movie_id
			b. movie_name
                        c. duration
			d. genre 
			e. language 
			f. format
    3. Shows :
		The attributes of this entity are : 
			a. show_id 
			b. theatre_id 
			c. movie_id 
			d. date
			e. show_time 
	4. Dates : 
		The attributes of this entity are : 
			a. date_id
			b. show_date
