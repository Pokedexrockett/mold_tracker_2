class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :dry_room
    has_many :notes
    has_many_attached :images 
    has_many :users, through: :notes

    validates :name, :batch_number, :metric_tag, :date, :mold_weight

end
