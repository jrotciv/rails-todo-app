class Item < ApplicationRecord
  belongs_to :list

  validates :task, presence: true, length: { minimum: 3, maximum: 255 }
end
