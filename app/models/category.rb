class Category < ApplicationRecord
  validates :nombre, presence: true

  has_many :products, dependent: :restrict_with_exception
end
