class Memento < ApplicationRecord
  has_one_attached :main_image, dependent: :destroy

  validates :fname, presence: true
  validates :lname, presence: true
end
