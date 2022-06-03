class User < ApplicationRecord
    has_many :strains
    has_many :notes
    has_many :strain_notes, through: :notes, source: :strain
    has_many :dry_rooms

    # has_secure_password

    validates :user_name, :email, presence: true
    validates :email, uniqueness: true
end
