class CreateRaceRegistrations < ActiveRecord::Migration
  def change
    create_table :race_registrations do |t|
      t.references :user, index: true
      t.references :race, index: true

      t.timestamps
    end
  end
end
