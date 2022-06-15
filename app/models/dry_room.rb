class DryRoom < ApplicationRecord
    has_many :strains

    validates :name, presence: true
end
