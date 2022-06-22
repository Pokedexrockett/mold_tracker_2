class DryRoom < ApplicationRecord
    has_many :strains

    validates :room_number, presence: true

    scope :alpha, -> {order(:room_number)}
end
