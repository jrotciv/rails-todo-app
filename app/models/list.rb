class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
end
