require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...



# pp @store1
@store1.employees.create(first_name: nil, last_name: "Virani", hourly_rate: "ten")
@store1.employees.create(first_name: "Cole", last_name: "Guy", hourly_rate: 60)
@store2.employees.create(first_name: "Joel", last_name: "Stuff", hourly_rate: 60)
@store2.employees.create(first_name: "Josh", last_name: "Thing", hourly_rate: 60)

pp Employee.all