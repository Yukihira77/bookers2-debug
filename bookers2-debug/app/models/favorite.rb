class Favorite < ApplicationRecord
  belomgs_to :user
  belongs_to :book
end

