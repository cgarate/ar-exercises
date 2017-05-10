require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base

end

def createStore(name, annual_revenue, mens_apparel, womens_apparel)
    s = Store.new
    s.name = name
    s.annual_revenue = annual_revenue
    s.mens_apparel = mens_apparel
    s.womens_apparel = womens_apparel
    s.save
end

s1 = createStore("Burnaby", 300000, 1, 1)
s2 = createStore("Richmond", 1260000, 0, 1)
s3 = createStore("Gastown", 190000, 1, 0)

puts Store.count
