class Coach < ApplicationRecord
    belongs_to :team
    has_many :scheduleable, :as => :scheduleable
    has_many :track_record_coaches
    has_many :gallery_coaches
end
