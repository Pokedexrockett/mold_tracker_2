class Note < ApplicationRecord
    belongs_to :user
    belongs_to :strain
    has_many_attached :images
end
