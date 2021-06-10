class Candidate < ApplicationRecord
  has_many :challenges
  has_many :jobs
  has_many :chatrooms
  belongs_to :country
  #belongs_to :tech_hub
  has_one_attached :photo
  has_one_attached :map
end
