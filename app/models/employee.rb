class Employee < ApplicationRecord
    has_many :duties , dependent: :destroy
    belongs_to :user
    validates :company_name, presence: true,
                    length: { minimum: 1 }, allow_blank: false
    validates :address, presence: true, allow_blank: false
    validates :name, presence: true,
                    length: { minimum: 1 }, allow_blank: false
    validates :position, presence: true, allow_blank: false
    validates :tax, presence: true, allow_blank: false

    validates :user_id, uniqueness: true

end
