class CreateEntreesTable < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :name
      t.string :description
      t.string :ingredients
      t.integer :menu_id
    end
  end
end
