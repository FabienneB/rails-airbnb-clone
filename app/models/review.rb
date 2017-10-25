class Review < ApplicationRecord
  belongs_to :cowork
  belongs_to :user
end
