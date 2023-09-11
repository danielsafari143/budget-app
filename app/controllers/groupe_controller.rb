class GroupeController < ApplicationController
  before_action :authenticate_user!

  def index
    @groupe = current_user.groupes.includes(:entities).all
  end

  def new
    @groupe = current_user.groupes
  end

  def create
    groupe = params[:Groupe]
    Groupe.create(name: groupe['name'], icon: groupe['icon'], user: current_user)
    redirect_to '/groupe'
  end
end
