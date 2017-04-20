# load 'contact-info.rb'
load 'person.rb'

person = Human::Person.new
person.first_name = "John"
person.last_name = "Doe"
puts person.full_name