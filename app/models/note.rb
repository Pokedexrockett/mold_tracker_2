class Note < ApplicationRecord
    belongs_to :user
    belongs_to :strain

    validates :description, presence: true
    validates :description, length: {maximum: 500}
end
