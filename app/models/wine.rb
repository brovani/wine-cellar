class Wine < ApplicationRecord
  belongs_to :producer
  belongs_to :geography
  belongs_to :case
  belongs_to :bottle
  has_many :vintages
end
