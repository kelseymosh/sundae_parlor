class CreateToppingsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :toppings do |t|
      t.string :topping_type
      
    end
  end
end
