# ***Ajouter l'information qu'il existe le principe de callback sur les modèles (before_save, after_save, etc.)***
# https://guides.rubyonrails.org/active_record_callbacks.html#available-callbacks
class Joueur < ApplicationRecord
    validates :email, uniqueness: true
    validates :nom, :prenom, presence: {message: "Le nom et le prénom doivent être présent!"}
  
    has_many :parties_1, foreign_key: :joueur_1_id, class_name: :Partie
    has_many :parties_2, foreign_key: :joueur_2_id, class_name: :Partie
  
    def parties
      self.parties_1 + self.parties_2
    end
  
    def fullname
      prenom + " " + nom
    end
  end