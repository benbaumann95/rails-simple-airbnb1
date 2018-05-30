class Flat < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence:
  validates :pictureUrl, presence: true
  validates :number_of_guests, presence: true
  validates :price_per_night, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end

  end
end
