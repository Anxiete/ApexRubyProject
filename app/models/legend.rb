class Legend < ApplicationRecord
  belongs_to :role
  validates :name, :title, :passive, :tactical, :ultimate, presence: true

  def self.search(search)
    if search
      legend = Legend.where('name LIKE ?', "%#{search}%")
    else
      Legend.all
    end
  end
end