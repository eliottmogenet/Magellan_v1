class Country < ApplicationRecord
  has_many :candidates
  belongs_to :tech_hub
end
