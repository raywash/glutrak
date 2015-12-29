class Reading < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :glucose_level, presence: true
end
