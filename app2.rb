require 'pg'

db = PG::Connection.new( dbname: 'postgres', port: 5432, password: 'postgres', user: 'postgres', host: 'localhost' )
s = db.exec "SELECT * FROM Car"
s.each do |row|
  puts row
end
db.close