class RacesController < ApplicationController
	def index
		@races = Race.all
	end


	def show
		@race = Race.find(params[:id])
	end


	def edit
		@race = Race.find(params[:id])
	end

	def update
		@race = Race.find(params[:id])
		
 	 	if @race.update(race_params)

	 	 	redirect_to @race, notice: "Race successfully updated!"
	 	else
	 	 	render :edit
	 	end
 	end

 	def new
 		@race = Race.new
 	end


 
	def create
	 	
	  	@race = Race.new(race_params)
	  	if
	  		@race.save
	  		redirect_to @race, notice: "Race successfully created!"
	  	else
	  		render :new	
	  	end
	end

	def destroy
		@race = Race.find(params[:id])
		  @race.destroy
		  redirect_to races_url, alert: "Race successfully deleted!"
	end


private

	def race_params
		race_params = params.require(:race).
	  			permit!
	end
end
