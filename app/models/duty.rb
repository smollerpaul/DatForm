class Duty < ApplicationRecord
  belongs_to :employee

  validates :date, presence: true , length: {minimum:5, maximum:10}
  validates :work_description, presence: true
  validates :income, presence: true, numericality: {greater_than: 0}
end
