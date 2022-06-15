class Note < ApplicationRecord
    belongs_to :user
    belongs_to :strain

    validates :description, presence: true
end
