class CreaturesController < ApplicationController

	def index
		#get all the creatures from db and save to instance variable
		#don't need render :index because this is default behavior
		@creatures = Creature.all
	end

	def new
		#don't need render :new because this is default
		@creature = Creature.new
	end

	def show
		creature_id = params[:id]
		@creature = Creature.find_by_id(creature_id)
	end

	def create
		creature_params = params.require(:creature).permit(:name, :description)

		creature = Creature.new(creature_params)

		if creature.save
			redirect_to creature_path(creature)
		end


	end
end
