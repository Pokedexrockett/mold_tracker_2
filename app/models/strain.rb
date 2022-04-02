class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :dry_room
    has_many :photos 
    has_many :users, through: :photos

end
