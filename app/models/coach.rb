class Coach < ApplicationRecord
    belongs_to :team
    has_many :scheduleable, :as => :scheduleable
    has_many :track_record_coaches
    has_many :gallery_coaches
  # Include default devise modules. Others available are:
    #:omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable 
end
