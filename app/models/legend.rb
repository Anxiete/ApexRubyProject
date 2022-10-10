class Legend < ApplicationRecord
  belongs_to :role
  validates :name, :title, :passive, :tactical, :ultimate, presence: true
end
