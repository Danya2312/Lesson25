require 'pg'

db = PG::Connection.new( dbname: 'postgres', port: 5432, password: 'postgres', user: 'postgres', host: 'localhost' )
db.exec('Create table public.Car (
		id serial PRIMARY KEY,
		name varchar,
		price integer)'
)
db.exec "INSERT INTO Car VALUES (1, 'Opel', 5000)"
db.close