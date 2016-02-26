class Message < ApplicationRecord
  belongs_to :review, counter_cache: true
  belongs_to :avatar, counter_cache: true
end
