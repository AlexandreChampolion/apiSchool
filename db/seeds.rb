# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.create!([
    {"name":"Ecole primaire Michel Servet","address":"2-6 Rue Alsace Lorraine","zip_code":"69001","city":"Lyon","openings":"8H-18h","phone":"0472429057","email":"ecole-servet@ecole.fr","nb_student":"350","status":"public","latitude":"45.7720199","longitude":"4.8368897999999945"},
        {"name":"OGEC GROUPE SCOLAIRE SAINT DENIS","address":"7 Rue Hénon","zip_code":"69004","city":"Lyon","openings":"8H-18h","phone":"0472424417","email":"ecole-ogec@ecole.fr","nb_student":"100","status":"public","latitude":"45.779445","longitude":"4.831833999999958"},
        {"name":"Ecole Primaire Privée Saint Sacrement","address":"15 Rue Etienne Dolet","zip_code":"69003","city":"Lyon","openings":"8H-18h","phone":"0472209000","email":"ecole-sacrement@ecole.fr","nb_student":"250","status":"private","latitude":"45.757568","longitude":"4.851882"},
        {"name":"Ecole maternelle publique Anatole France","address":"15 Rue Louis","zip_code":"69003","city":"Lyon","openings":"8H-18h","phone":"0472333612","email":"ecole-anatole@ecole.fr","nb_student":"50","status":"private","latitude":"45.7528455","longitude":"4.888221499999986"},
        {"name":"Ecole maternelle Condorcet","address":"37 Rue Jules Massenet","zip_code":"69003","city":"Lyon","openings":"8H-18h","phone":"0472719052","email":"ecole-condorcet@ecole.fr","nb_student":"280","status":"public","latitude":"45.7482793","longitude":"4.8924376999999595"},
        {"name":"Ecole Maternelle Audrey Hepburn","address":"8 Rue Tissot","zip_code":"69009","city":"Lyon","openings":"8H-18h","phone":"0472604911","email":"ecole-hepburn@ecole.fr","nb_student":"150","status":"public","latitude":"45.7766122","longitude":"4.80246360000001"},
        {"name":"École élémentaire","address":"2-6 Rue Alsace Lorraine","zip_code":"69001","city":"Lyon","openings":"8H-18h","phone":"0472452399","email":"ecole-alsace@ecole.fr","nb_student":"80","status":"public","latitude":"45.7488929","longitude":"45.7488929"}
    ])
