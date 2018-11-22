class Schedule < ApplicationRecord
    belongs_to :scheduleable, polymorphic: true
    belongs_to :team
    belongs_to :coach
end
