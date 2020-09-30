class CreateSundaesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sundaes do |t|
      t.references :ice_cream
      t.references :topping
    end
  end
end
