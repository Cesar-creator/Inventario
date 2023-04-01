class Product < ApplicationRecord
  has_one_attached :foto

  validates :nombre, presence: true
  validates :fechaVencimiento, presence: true
  validates :cantidad, presence: true

  belongs_to :category
  belongs_to :proveedor
end
