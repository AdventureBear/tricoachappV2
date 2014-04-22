class RaceRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
end
