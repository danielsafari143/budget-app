class EntityController < ApplicationController
  def create
    entity_params = params[:Entity]
    entity = Entity.create(name: entity_params['name'], amount: entity_params['amount'], user: current_user)
    groupe = Groupe.find_by(id: params[:category])
    groupe.entities << entity
    redirect_to "/groupe/#{groupe.id}"
  end
end
