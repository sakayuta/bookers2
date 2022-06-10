class Book < ApplicationRecord
  has _one_attaced :image
  belongs_to :user
end
