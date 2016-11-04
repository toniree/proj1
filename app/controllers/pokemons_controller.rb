class PokemonsController < ApplicationController

  def capture
  	@trainer = current_trainer
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.trainer_id = @trainer.id
  	if @pokemon.save
  		redirect_to root_path('home#index')
  	else
  	end
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@trainer = Trainer.find(@pokemon.trainer_id)
  	if @pokemon.health > 10
  		@pokemon.health = @pokemon.health - 10
  	else
  		@pokemon.delete
  	end
  	if @pokemon.save
  		redirect_to trainer_path(@trainer)
  	else
  	end
  end

  def new 
  	@trainer = current_trainer
  	@pokemon = Pokemon.new({"health" => 100, "level"=> 1, "trainer_id"=>@trainer.id})
  	if @pokemon.save
  		redirect_to trainer_path(@trainer)
  	else
  	end
  end

  def create
  	@name = params[:name]
    @flevel = params[:level]
    @health = params[:health]
  	if @pokemon.save!
  		redirect_to trainer_path(@trainer)
  	else
  		redirect_to 'pokemon#create'
  		flash[:error] = @pokemon.errors.full_messages.to_sentence
  	end
  	render 'show'
  end


end