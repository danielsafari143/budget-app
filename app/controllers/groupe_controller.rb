class GroupeController < ApplicationController
  before_action :authenticate_user!

  def index
    @groupe = current_user.groupes.includes(:entities).all
  end

  def new
    @groupe = current_user.groupes
  end

  def show
    @groupe = current_user.groupes.includes(:entities).find_by(id: params['id'])
    @entity = @groupe.entities.order('created_at DESC')
  end

  def create
    groupe = params[:Groupe]
    Groupe.create(name: groupe['name'], icon: groupe['icon'], user: current_user)
    redirect_to '/groupe'
  end
end
