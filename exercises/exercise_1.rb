require_relative '../setup'
require 'active_record'
puts "Exercise 1"
puts "----------"


# store = Store.all
# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, numericality: { only_integer: true }
  validates :name, length: { minimum: 3 }


end
class Employees < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :store_id, presence: true
end


s1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
s2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
s3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)


# pp Store.all

