require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Carlos", last_name: "Garate", hourly_rate: 65)
@store2.employees.create(first_name: "Mike", last_name: "Lee", hourly_rate: 50)
@store2.employees.create(first_name: "Tamar", last_name: "Adams", hourly_rate: 80)
@store1.employees.create(first_name: "John", last_name: "Hopkins", hourly_rate: 35)
@store1.employees.create(first_name: "Ashley", last_name: "G", hourly_rate: 15)
@store2.employees.create(first_name: "Javier", last_name: "Martinez", hourly_rate: 20)
