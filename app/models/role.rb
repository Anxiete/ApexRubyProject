class Role < ApplicationRecord
  has_many :legends
  validates :name, :role_img, presence: true
end
