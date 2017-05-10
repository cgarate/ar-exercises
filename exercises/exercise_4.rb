require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

s = createStore("Surrey", 224000, 0, 1)
s = createStore("Whistler", 1900000, 1, 0)
s = createStore("Yaletown", 430000, 1, 1)

@mens_stores = Store.where(mens_apparel:1, womens_apparel:0)

@mens_stores.each do |s|
  puts "#{s.name} - #{s.annual_revenue}"
end
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000 )

@womens_stores.each do |s|
  puts "#{s.name} - #{s.annual_revenue}"
end
