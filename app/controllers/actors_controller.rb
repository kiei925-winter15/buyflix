class ActorsController < ApplicationController

  def new
    @actor = Actor.new
  end

end