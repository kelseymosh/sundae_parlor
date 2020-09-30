class Topping < ActiveRecord::Base
    has_many :sundaes
    has_many :ice_creams, through: :sundaes
end