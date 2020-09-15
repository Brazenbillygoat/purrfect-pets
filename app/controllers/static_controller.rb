class StaticController < ApplicationController
  def welcome
    
  end

  def index
    @pets = Pet.all
  end
end
