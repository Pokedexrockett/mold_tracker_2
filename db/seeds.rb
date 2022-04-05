# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ employee: "Dexter Crockett" }, { employee: "Tommy Chong" }, { employee: "Seth Rogen"}, { employee: "Kisuke Uruhara"},
                     { employee: "Michael Human" }, { employee: "Jeff Goldblum" }])

strains = Strain.create([ { name: "Girl Scout Cookies", batch_number: 100000023456,  } ])                     