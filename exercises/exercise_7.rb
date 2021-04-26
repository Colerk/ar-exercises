require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

resp = gets.chomp

s5 = Store.create(name: resp)
puts s5.errors[:annual_revenue]
puts s5.errors[:name]
# puts s5.errors[:annual_revenue]

pp Store.all