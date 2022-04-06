# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ employee: "Dexter Crockett" }, { employee: "Lorelai gilmore" }, { employee: "Seth Rogen"}, { employee: "Genkai"},
                     { employee: "Eleanor Shellstrop" }, { employee: "Jeff Goldblum" }
                    ])

strains = Strain.create([ { name: "Girl Scout Cookies", batch_number: "1A00000023456", metric_tag: "1A00000065432", date: "03/02/2022", mold_weight: 20, dry_room_id: 1 },
                          { name: "Grand Daddy Purple", batch_number: "1A00000023457", metric_tag: "1A00000065433", date: "03/02/2022", mold_weight: 20, dry_room_id: 1 },
                          { name: "Miracle Alien Cookies #12", batch_number: "1A00000023458", metric_tag: "1A00000065434", date: "03/02/2022", mold_weight: 20, dry_room_id: 3 },
                          { name: "Blue Dream", batch_number: "1A00000023459", metric_tag: "1A00000065435", date: "03/02/2022", mold_weight: 20, dry_room_id: 4 },
                          { name: "Florida Kush", batch_number: "1A00000023450", metric_tag: "1A00000065436", date: "03/02/2022", mold_weight: 20, dry_room_id: 6 },
                          { name: "Dog Patch", batch_number: "1A00000023451", metric_tag: "1A00000065437", date: "03/02/2022", mold_weight: 20, dry_room_id: 6 } 
                        ])   


strain.user = user[0]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_1.jpeg"),
    filename: "1.jpeg"
)
strain.save!
strain.user = user[1]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_2.jpeg"),
    filename: "2.jpeg"
)
strain.save!
strain.user = user[2]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_3.jpeg"),
    filename: "3.jpeg"
)
strain.save!
strain.user = user[3]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_4.jpeg"),
    filename: "4.jpeg"
)
strain.save!
strain.user = user[4]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_5.jpeg"),
    filename: "5.jpeg"
)
strain.save!
strain.user = user[5]
strain.image.attach(
    io: File.open("C:\Users\dcroc\Documents\Coding\mold_tracker_2\mold_photos\strain_mold_6.jpeg"),
    filename: "6.jpeg"
)
strain.save!

                          
dry_rooms = DryRoom.create ([ { room_number: 1 }, { room_number: 2 }, { room_number: 3 }, { room_number: 4 }, { room_number: 5 }, { room_number: 6 } ])

notes = Note.create([ { description:"Very wet", user_id: 1, strain_id: 1 },
                      { description:"A lot of fan leaves", user_id: 2, strain_id: 2 },
                      { description:"Pretty dry", user_id: 3, strain_id: 3 },
                      { description:"Too wet and a lot of fan leaves", user_id: 4, strain_id: 4 },
                      { description:"Slightly wet", user_id: 5, strain_id: 5 },
                      { description:"Wet", user_id: 6, strain_id: 6 }
                     ])