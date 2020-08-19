class Merchant < ApplicationRecord
  has_many :cases
  has_many :bottles
end
