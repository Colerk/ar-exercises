require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

s4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
s5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
s6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_Store = Store.where(mens_apparel: true)

# @mens_Store.each do |store| 
#   puts store.name, store.annual_revenue
# end

@womens_Store = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# @womens_Store.each do |store| 
#   puts store.name, store.annual_revenue
# end