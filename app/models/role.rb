class Role < ApplicationRecord
  has_many :legends
  validates :name, presence: true
end
