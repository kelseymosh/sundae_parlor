class IceCream < ActiveRecord::Base
    has_many :sundaes
    has_many :toppings, through: :sundaes
end