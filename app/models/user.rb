class User < ApplicationRecord
    has_many :strains
    has_many :photos
    has_many :strain_photos, through: :photos, source :strain
    has_many :dry_rooms
end
