class Mouvement < ApplicationRecord
    belongs_to :joueur
    belongs_to :partie
  end
  