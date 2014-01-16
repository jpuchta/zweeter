class ZombiesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @zombie= Zombie.new(params[:zombie])
    @zombie.save
    redirect_to @zombie
  end

  def update
  end

  def destroy
  end
end
