class CreateIceCreamsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_creams do |t|
      t.string :flavor

    end
  end
end
