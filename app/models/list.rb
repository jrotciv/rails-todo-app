class List < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
end
