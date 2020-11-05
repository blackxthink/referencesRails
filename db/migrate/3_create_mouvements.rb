class CreateMouvements < ActiveRecord::Migration[5.2]
    def change
      create_table :mouvements do |t|
        t.references :joueur, index: true, foreign_key: true
        t.references :partie, index: true, foreign_key: true
        t.string :lettre
        t.integer :numero
  
        t.timestamps
      end
    end
  end
  