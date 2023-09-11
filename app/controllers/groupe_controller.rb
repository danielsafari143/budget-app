class GroupeController < ApplicationController
    before_action :authenticate_user!

    def index
      @groupe = current_user.groupes.includes(:entities).all
    end

    def new
      
    end
end
