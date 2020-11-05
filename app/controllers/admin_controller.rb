#Dave grenier#
#28 octobre 2020#

class AdminController < ActionController::Base
    before_action :authenticate_user!
    before_action :is_admin?

    private
    def is_admin?
        if !current_user.admin  #ajouter un champ admin dans bd
            render html: "not autorized"
        end
    end

    def is_authorized?
        is_admin?
    end

end
