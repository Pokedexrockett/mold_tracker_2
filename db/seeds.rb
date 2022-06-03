# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ employee: "Dexter Crockett", email: "dcrockett@thehighplace.com", password: "testing1" }, { employee: "Lorelai gilmore", email: "lgilmore@thehighplace.com", password: "testing2" }, 
                     { employee: "Seth Rogen", email: "srogen@thehighplace.com", password: "testing3"}, { employee: "Genkai", email: "genkai@thehighplace.com", password: "testing4"},
                     { employee: "Eleanor Shellstrop", email: "eshellstrop@thehighplace.com", password: "testing5" }, { employee: "Jeff Goldblum", email: "jgoldblum@thehighplace.com", password: "testing6" }
                    ])

# strains = Strain.create([ { name: "Girl Scout Cookies", batch_number: "1A00000023456", metric_tag: "1A00000065432", date: "03/02/2022", mold_weight: 20, dry_room_id: 1 },
#                           { name: "Grand Daddy Purple", batch_number: "1A00000023457", metric_tag: "1A00000065433", date: "03/02/2022", mold_weight: 20, dry_room_id: 1 },
#                           { name: "Miracle Alien Cookies #12", batch_number: "1A00000023458", metric_tag: "1A00000065434", date: "03/02/2022", mold_weight: 20, dry_room_id: 3 },
#                           { name: "Blue Dream", batch_number: "1A00000023459", metric_tag: "1A00000065435", date: "03/02/2022", mold_weight: 20, dry_room_id: 4 },
#                           { name: "Florida Kush", batch_number: "1A00000023450", metric_tag: "1A00000065436", date: "03/02/2022", mold_weight: 20, dry_room_id: 6 },
#                           { name: "Dog Patch", batch_number: "1A00000023451", metric_tag: "1A00000065437", date: "03/02/2022", mold_weight: 20, dry_room_id: 6 } 
#                         ])   

strains = Strain.create(name: "Girl Scout Cookies", batch_number: "1A00000023456", metric_tag: "1A00000065432", date: "03/02/2022", mold_weight: 20, dry_room_id: 1, user: users.first)
strains = Strain.create(name: "Grand Daddy Purple", batch_number: "1A00000023457", metric_tag: "1A00000065433", date: "03/02/2022", mold_weight: 20, dry_room_id: 1, user: users.second)
strains = Strain.create(name: "Miracle Alien Cookies #12", batch_number: "1A00000023458", metric_tag: "1A00000065434", date: "03/02/2022", mold_weight: 20, dry_room_id: 3, user: users.third)
strains = Strain.create(name: "Blue Dream", batch_number: "1A00000023459", metric_tag: "1A00000065435", date: "03/02/2022", mold_weight: 20, dry_room_id: 4, user: users.fourth)
strains = Strain.create(name: "Florida Kush", batch_number: "1A00000023450", metric_tag: "1A00000065436", date: "03/02/2022", mold_weight: 20, dry_room_id: 6, user: users.fifth)
strains = Strain.create(name: "Dog Patch", batch_number: "1A00000023451", metric_tag: "1A00000065437", date: "03/02/2022", mold_weight: 20, dry_room_id: 6, user: users.fifth)
               

dry_rooms = DryRoom.create ([ { room_number: 1 }, { room_number: 2 }, { room_number: 3 }, { room_number: 4 }, { room_number: 5 }, { room_number: 6 } ])

notes = Note.create(description:"Very wet", user_id: 1, strain_id: 1)
notes = Note.create(description:"A lot of fan leaves", user_id: 2, strain_id: 2)
notes = Note.create(description:"Pretty dry", user_id: 3, strain_id: 3)
notes = Note.create(description:"Too wet and a lot of fan leaves", user_id: 4, strain_id: 4)
notes = Note.create(description:"Slightly wet", user_id: 5, strain_id: 5)
notes = Note.create(description:"Wet", user_id: 6, strain_id: 6)
                         
                       



# .images.attach(
#     io: File.open("app/assets/images/1.jpg"),
#     filename: "1.jpg"
# )

# .images.attach(
#     io: File.open("app/assets/images/2.jpg"),
#     filename: "2.jpg"
# )
# strain.save!
# strain.user = user[2]
# strain.images.attach(
#     io: File.open("app/assets/images/3.jpg"),
#     filename: "3.jpg"
# )
# strain.save!
# strain.user = user[3]
# strain.images.attach(
#     io: File.open("app/assets/images/4.jpg"),
#     filename: "4.jpg"
# )
# strain.save!
# strain.user = user[4]
# strain.images.attach(
#     io: File.open("app/assets/images/5.jpg"),
#     filename: "5.jpg"
# )
# strain.save!
# strain.user = user[5]
# strain.images.attach(
#     io: File.open("app/assets/images/6.jpg"),
#     filename: "6.jpg"
# )
# strain.save!

                          
