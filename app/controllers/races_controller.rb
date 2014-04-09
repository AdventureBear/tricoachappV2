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
		params.require(:race).permit!
 	 	@race.update(params[:race])
 	 	redirect_to @race

 	 	
	end
end
