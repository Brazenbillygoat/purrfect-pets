class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def dog
    @pets =  Pet.select {|pet| pet.species == "dog"}
    render :index
  end

  def cat
    @pets =  Pet.select {|pet| pet.species == "cat"}
    render :index

  end

  def bird
    @pets =  Pet.select {|pet| pet.species == "bird"}
    render :index
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
