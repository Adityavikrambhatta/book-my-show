# book-my-show
## Entity and Attribute Descriptions

### 1. Theatre

- **Attributes**:
    - theatre_id (primary key)
    - theatre_name
    - location
    - cancel_able

### 2. Movie

- **Attributes**:
    - movie_id
    - movie_name
    - duration
    - genre
    - language
    - format

### 3. Shows

- **Attributes**:
    - show_id
    - theatre_id
    - movie_id
    - date
    - show_time

### 4. Dates

- **Attributes**:
    - date_id
    - show_date
