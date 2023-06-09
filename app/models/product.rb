class Product < ApplicationRecord
  has_one_attached :foto
  has_many :movements, :dependent => :destroy

  validates :nombre, presence: true

  belongs_to :category

  def quantity
    total = 0
    self.movements.each do |movement|
      if movement.movement_type == Movement::MovementTypes[:add]
        total += movement.quantity
      else
        total -= movement.quantity
      end
    end
    return total
  end
end
