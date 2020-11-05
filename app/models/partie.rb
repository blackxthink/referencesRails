class Partie < ApplicationRecord
    belongs_to :joueur_1, foreign_key: :joueur_1_id, class_name: :Joueur
    belongs_to :joueur_2, foreign_key: :joueur_2_id, class_name: :Joueur, optional: true
  
    belongs_to :gagnant, foreign_key: :gagnant_id, class_name: :Joueur, optional: true
  
    def joueurs
      [joueur_1, joueur_2].compact # Retire les cases null ou blank du tableau
    end

    def informations
      if (joueur_2)
        return "Joueur 1: " + joueur_1.fullname + " VS Joueur 2: " + joueur_2.fullname
      else
        return "Joueur 1: " + joueur_1.fullname + " VS Joueur 2: Libre"
      end
    end


  
    def status
      if self.gagnant
        return "End"
      elsif !self.joueur_2
        return "Waiting"
      else
        return "In Progress"
      end
    end
  end