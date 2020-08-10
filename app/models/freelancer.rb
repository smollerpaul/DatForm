class Freelancer < ApplicationRecord
    has_many :tasks, dependent: :destroy
    belongs_to :user
    validates :name, presence: true,
                    length: { minimum: 1 }, allow_blank: false
    validates :position, presence: true, allow_blank: false

    validate :end_after_start
    validates :start_date, presence: true
    validates :end_date, presence: true

    validates :user_id, uniqueness: true

   

private
def end_after_start
  return if end_date.blank? || start_date.blank?
 
  if end_date < start_date
    errors.add(:end_date, "must be after the start date") 
  end 
 end
end