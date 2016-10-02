class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
	end

	def new
		@creature = Creature.new
	end

	def show
		@creature = Creature.find_by_id(params[:id])

	end

	def edit
		@creature = Creature.find_by_id(params[:id])
	end

	def destroy
		creature = Creature.find_by_id(params[:id])
		creature.destroy
		redirect_to creatures_path
	end

	def create
		@creature = Creature.create(creature_params)
		if @creature.save
			redirect_to @creature
		else
			render 'new'
		end
	end

	def update
		@creature = Creature.find_by_id(params[:id])
		@creature.update_attributes(creature_params)
		if @creature.save
			redirect_to creatures_path
		else
			render 'edit'
		end
	end

	private
		def creature_params
			params.require(:creature).permit(:name, :description)
		end
end
