class Storage < ApplicationRecord
  belongs_to :user
  has_many :bottles
  has_many :cases
  has_many :wines, through: :cases
  has_many :wines, through: :bottles
end