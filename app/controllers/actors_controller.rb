class ActorsController < ApplicationController
  skip_before_action :require_user, only: :show

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by(id: params["id"])
    @roles = @actor.roles
  end

  def new
    @actor = Actor.new
  end

  def create
    actor_params = params.require(:actor).permit(:name)
    @actor = Actor.create(actor_params)
    
    # read the uploaded file
    # write the uploaded file to a new file somewhere
    
    redirect_to actors_path
  end

  def edit
    @actor = Actor.find_by(id: params["id"])
  end

  def update
    actor_params = params.require(:actor).permit(:name)
    @actor = Actor.find_by(id: params["id"])
    @actor.update(actor_params)
    redirect_to actors_path
  end

  def destroy
    @actor = Actor.find_by(id: params["id"])
    @actor.destroy
    redirect_to actors_path
  end

end