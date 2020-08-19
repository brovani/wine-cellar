class Review < ApplicationRecord
  belongs_to :media
  belongs_to :wine
end
