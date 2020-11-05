class Admin::UsersController < AdminController #le Admin:: fait référence au dossier /admin/
    def index
        @joueurs = Joueur.all

        respond_to do |format|
        format.html { render "admin/recettes" }
        format.json { render :json => @joueurs.to_json }
        format.xml { render :xml => @joueurs.to_xml }
        end
    end
        
end
