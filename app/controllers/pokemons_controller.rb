class PokemonsController < ApplicationController
	def capture 
		pokemon=Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path
	end

	def create
		pokemon = Pokemon.create(pokemon_params)
		pokemon.trainer_id= current_trainer.id
		pokemon.health = 100
		pokemon.level = 1
		if pokemon.save
			redirect_to "/trainers/"+current_trainer.id.to_s
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_back fallback_location: "root"
		end
	end
	def damage
		pokemon=Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save

		if pokemon.health <= 0
			pokemon.destroy
		end
		
		redirect_back fallback_location: "/trainers"
	end
	def new
		@pokemon = Pokemon.new
	end

	private

	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end
