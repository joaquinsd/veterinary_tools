class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client

  def history_count
    pet_histories.count
  end

  def avg_weight
    Pet.includes(:pet_histories).references(:pet_histories).where(pet_histories: { pet_id: id }).average(:weight)
  end

  def avg_height
    Pet.includes(:pet_histories).references(:pet_histories).where(pet_histories: { pet_id: id }).average(:heigth)
  end

  def max_weight
    Pet.includes(:pet_histories).references(:pet_histories).where(pet_histories: { pet_id: id }).maximum(:weight)
  end

  def max_height
    Pet.includes(:pet_histories).references(:pet_histories).where(pet_histories: { pet_id: id }).maximum(:heigth)
  end

end
