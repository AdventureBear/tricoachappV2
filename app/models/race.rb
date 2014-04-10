class Race < ActiveRecord::Base
	validates :name, :race_date, :race_category, presence: true
	validates :swim_distance, :bike_distance, :run_distance, allow_blank: true, numericality: { greater_than_or_equal_to: 0 }

	validates :image_url, allow_blank: true, format: {
  		with:    /\w+.(gif|jpg|png)\z/i,
  		message: "must reference a GIF, JPG, or PNG image"
		}


end
