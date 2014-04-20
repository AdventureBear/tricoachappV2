class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	 def full_name
	  	if first_name.blank?
	  		"User " + id.to_s 
	  	else
	     	first_name + " " +  last_name
		end
	end
end


