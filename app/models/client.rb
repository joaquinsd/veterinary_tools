class Client < ApplicationRecord
  has_many :pets, dependent: :destroy

  def pet_count
    pets.count
  end

end