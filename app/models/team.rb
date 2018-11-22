class Team < ApplicationRecord
    has_many :scheduleable, :as => :scheduleable
    has_many :roosters
end
