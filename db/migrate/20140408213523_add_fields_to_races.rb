class AddFieldsToRaces < ActiveRecord::Migration
  def change
  	add_column :races,  :zip_code, :decimal
    add_column :races, :race_date, :date
     add_column :races, :image_url, :text
      add_column :races, :race_url, :text
       add_column :races, :swim_distance, :decimal
        add_column :races, :swim_units, :text
         add_column :races, :bike_distance, :decimal
          add_column :races, :bike_units, :text
           add_column :races, :run_distance, :decimal
            add_column :races, :run_units, :text
             add_column :races,  :race_distance_total, :decimal
              add_column :races,  :price, :decimal 
               add_column :races,  :comments, :text
   

  end
end
