require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :store_must_carry_at_least_one_apparel

  def store_must_carry_at_least_one_apparel
    if mens_apparel != true && womens_apparel != true
      self.errors.add(:mens_apparel, "Store must carry at least one kind of apparel")
      self.errors.add(:womens_apparel, "Store must carry at least one kind of apparel")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
  validates :first_name, :last_name,  presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

def createStore(name, annual_revenue, mens_apparel, womens_apparel)
    @s = Store.new
    @s.name = name
    @s.annual_revenue = annual_revenue
    @s.mens_apparel = mens_apparel
    @s.womens_apparel = womens_apparel
    @s.save
end

s1 = createStore("Burnaby", 300000, 1, 1)
s2 = createStore("Richmond", 1260000, 0, 1)
s3 = createStore("Gastown", 190000, 1, 0)
puts Store.count
