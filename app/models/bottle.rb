class Bottle < ApplicationRecord
  belongs_to :storage
  belongs_to :case
  belongs_to :merchant
end
