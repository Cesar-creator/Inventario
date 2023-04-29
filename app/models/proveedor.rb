class Proveedor < ApplicationRecord
  validates :nombre, presence: true

  has_many :movements, dependent: :restrict_with_exception
end
