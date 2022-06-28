CREATE TABLE list (
    id serial PRIMARY KEY,
    name text NOT NULL UNIQUE
);

CREATE TABLE todos (
id serial PRIMARY KEY,
name text NOT NULL,
completed boolean NOT NULL DEFAULT false,
list_id integer NOT NULL REFERENCES list(id)
);