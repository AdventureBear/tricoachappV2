module UsersHelper

def image_for(user, options={})
  size = options[:size] || 80
  if user.img_file_name.blank?
    image_tag('placeholder.png', width: size  )
  else
    image_tag(user.img_file_name, width: size)
  end
end

  


def format_age(user)
	if user.birthdate?

	  age = Date.today.year - user.birthdate.year
      age -= 1 if user.birthdate.strftime("%m%d").to_i > Date.today.strftime("%m%d").to_i
      age
    else
    	content_tag(:br, 'No Birthdate Provided')
    end
end	

	
end
