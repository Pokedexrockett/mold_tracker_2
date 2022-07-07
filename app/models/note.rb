class Note < ApplicationRecord
    belongs_to :user
    belongs_to :strain
    has_many_attached :images 


    validates :description, :mold_weight, presence: true
    validates :description, length: {maximum: 500}
end
