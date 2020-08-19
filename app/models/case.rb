class Case < ApplicationRecord
  belongs_to :storage
  belongs_to :merchant
  has_many :bottles
  has_many :wines
end
