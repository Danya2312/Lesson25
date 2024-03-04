require 'pg'

db = PG::Connection.new( dbname: 'BarberShop', port: 5432, password: 'postgres', user: 'postgres', host: 'localhost' )
db.exec "INSERT INTO Contacts (email, message) VALUES ('vasya11@mail.ru', 'Hello')"
db.exec "INSERT INTO Contacts (email, message) VALUES ('gopnik@mail.ru', 'Hi')"
db.exec "INSERT INTO Contacts (email, message) VALUES ('solnishko@mail.ru', 'Privet')"

db.exec "INSERT INTO Users (name, phone, datestamp, barber, color)
         VALUES ('Ivan', '12345', '23.12.23 15:00', 'Walter White', 'blue')"
db.exec "INSERT INTO Users (name, phone, datestamp, barber, color)
         VALUES ('Alex', '1232145', '22.12.23 20:00', 'Jessie Pinckman', 'black')"
db.exec "INSERT INTO Users (name, phone, datestamp, barber, color)
         VALUES ('Linda', '12578345', '25.12.23 12:00', 'Walter White', 'yellow')"
db.close