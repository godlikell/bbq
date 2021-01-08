CREATE TABLE party (
  id serial primary key not null,
  name varchar(255) not null
);
 
create table users (
  id serial primary key not null,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  email text not null,
  password varchar(255) not null,
  age integer not null 
);
 
create table user_parties (
  id serial primary key not null,
  party_id integer references party(id),
  user_id integer references users(id)
); 
 
create table access_tokens (
  id serial primary key not null,
  user_id integer references users(id),
  token varchar(255) not null,
  created_token timestamp,
  expiration_token timestamp
);