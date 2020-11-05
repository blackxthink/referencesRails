class CreateParties < ActiveRecord::Migration[5.2]
    def change
      create_table :parties do |t|
        t.references :joueur_1, index: true, foreign_key: {to_table: :joueurs}
        t.references :joueur_2, index: true, foreign_key: {to_table: :joueurs}
        t.references :gagnant, index: true, foreign_key: {to_table: :joueurs}
        t.text :plateau_joueur_1, null: false
        t.text :plateau_joueur_2, null: false
  
        t.timestamps
      end
    end
  end
  