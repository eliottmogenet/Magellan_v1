class Candidate < ApplicationRecord
  has_many :challenges
  #has_many :stacks, through: :candidate_stacks
  belongs_to :country
  #belongs_to :tech_hub
  has_one_attached :photo
  has_one_attached :map
end
