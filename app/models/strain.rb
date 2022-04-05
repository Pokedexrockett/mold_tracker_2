class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :dry_room
    has_many_attatched :notes 
    has_many :users, through: :notes

end
