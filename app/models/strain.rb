class Strain < ApplicationRecord
    belongs_to :user
    belongs_to :dry_room
    has_many :notes
    has_many :users, through: :notes

    validates :name, :batch_number, :metric_tag, presence: true

    scope :order_by_batch_number, -> {left_joins(:notes).group(:id).order('batch_id desc')}

    def self.alpha
        order(:name)
    end

    def dry_room_attributes=(attributes)
        self.dry_room = DryRoom.find_or_create_by(attributes) if !attributes['room_number'].empty?
        self.dry_room
    end

    def name_and_room_number
        "#{name} - #{dry_room.try(:room_number)}"
    end

end
