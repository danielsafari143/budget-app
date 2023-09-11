class GroupeController < ApplicationController
    before_action :authenticate_user!

    def index
      @groupe = current_user.groupes.all
    end

end
