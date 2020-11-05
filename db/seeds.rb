# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Joueur.create(email: "mstyves@cshawi.ca", password: "secret", nom: "St-Yves", prenom: "Mathieu")
Joueur.create(email: "fjean@cshawi.ca", password: "secret2", nom: "Jean", prenom: "France")
Joueur.create(email: "jhoffman@cshawi.ca", password: "secret3", nom: "Hoffman", prenom: "James")
m2 = Joueur.create(email: "mstyves2@cshawi.ca", password: "secret", nom: "St-Yves", prenom: "Mathieu2")
m3 = Joueur.create(email: "mstyves3@cshawi.ca", password: "secret", nom: "St-Yves", prenom: "Mathieu3")
m4 = Joueur.create(email: "mstyves4@cshawi.ca", password: "secret", nom: "St-Yves", prenom: "Mathieu4")
Partie.create(joueur_1_id: 1, joueur_2_id: 3, plateau_joueur_1: "{ plateau: [] }", plateau_joueur_2: "{ plateau: [] }")
Partie.create(joueur_1_id: 2, plateau_joueur_1: "{ plateau: [] }", plateau_joueur_2: "{ plateau: [] }")
Partie.create(joueur_1: m2, joueur_2: m3, plateau_joueur_1: "{ plateau: [] }", plateau_joueur_2: "{ plateau: [] }", gagnant: m2)
Partie.create(joueur_1: m3, joueur_2: m4, plateau_joueur_1: "{ plateau: [] }", plateau_joueur_2: "{ plateau: [] }")