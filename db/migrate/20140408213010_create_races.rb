class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.text :name
      t.text :description
      t.text :race_category
      t.text :city
      t.text :state

      t.timestamps
    end
  end
end
