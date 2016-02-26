class Avatar < ApplicationRecord
  has_many :reviews
  has_many :messages
end
