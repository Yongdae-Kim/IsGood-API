class Member < ApplicationRecord
  has_one :image, as: :imageable
end
