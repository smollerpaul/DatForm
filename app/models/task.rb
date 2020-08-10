class Task < ApplicationRecord
  belongs_to :freelancer

  validates :date, presence: true , length: {minimum:5, maximum:10}
  validates :work_description, presence: true
  validates :customer, presence: true
  validates :income, presence: true, numericality: {greater_than: 0}
end
