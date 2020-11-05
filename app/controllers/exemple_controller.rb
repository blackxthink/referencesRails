class ExempleController < ApplicationController
    before_action :get_parties
    #before_action :get_parties, only:[:index_5, :index_6, :index_4, :index_3] 

    #before_action :get_parties, only:[:index_4, :index_3] 
    #   on lance la methode get_parties avant tout le reste pour y avoir accès après.
    #   only, ça le fait juste dans ces trucs là!
    #   il existe aussi le except:
    #before_action :get_parties, except:[:index_4, :index_3]  
    #   se fait partout sauf sur ceux dans le tableau!
    
    
    def index_1
        @parties = Partie.all

        #██████████████████████████████████████████████████████████████████████████████████████████████████████        
        # @joueurs = @parties.collect do |p|

       #     p.informations
       #  end

        #@joueurs = @parties.collect{ |p| p.informations} #équivalent de la boucle en haut en commentaire

        @joueurs = @parties.map(&:informations) #equivalent des deux autres en commentaire
        #██████████████████████████████████████████████████████████████████████████████████████████████████████



        render html: @joueurs.to_s
    end


    def index_2
        @parties = Partie.all
        @joueurs = @parties.map(&:joueurs)

        render json: @joueurs
    end


    def index_3
        #@parties = Partie.all #on remplace ça par le Partie.all. dans le @joueurs
        @joueurs = @parties.all.map(&:joueurs).as_json
        
        render xml: @joueurs
    end

    def index_4
        @joueurs = @parties.map(&:joueurs)
        render json: @joueurs
    end



    # Exemple utilisant les mimetypes (!!!Notez que cette action remplace toutes celles plus haut!!!)
    def index_5
        @joueurs = @parties.map(&:joueurs).as_json

        respond_to do |format|
        format.html { render :html => @joueurs.to_s }
        format.json { render :json => @joueurs.to_json }
        format.xml { render :xml => @joueurs.to_xml }
        end
    end



    def index_6
        @joueurs = @parties.map(&:joueurs).as_json

        respond_to do |format|
          format.html { render 'exemple/index_6'}
          format.json { render :json => @joueurs.to_json }
          format.xml { render :xml => @joueurs.to_xml }
        end
    end


    def show_1
        @partie = Partie.find(params[:id])
        @joueurs = {joueur_1: @partie.joueur_1, joueur_2: @partie.joueur_2}

        
        respond_to do |format|
            format.html { render :html => @joueurs.to_s}
            format.json { render :json => @joueurs.to_json}
            format.xml { render :xml => @joueurs.to_xml}
          end
    end

    private
    def get_parties
        @parties = Partie.all
    end

end