class Req < ApplicationRecord
  #has_many :missions
  #has_many :req_stacks
  #has_many :users
  has_one_attached :photo
end
