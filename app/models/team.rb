class Team < ApplicationRecord
    belongs_to :coach
    has_many :scheduleable, :as => :scheduleable
    has_many :roosters , dependent: :destroy
    accepts_nested_attributes_for :roosters,
                                  allow_destroy: true,
                                  reject_if: proc { |att| att['description'].blank? }
end
