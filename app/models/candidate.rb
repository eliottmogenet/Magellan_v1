class Candidate < ApplicationRecord
  has_many :challenges
  has_many :candidate_stacks
  belongs_to :countrie
  belongs_to :tech_hub
end
