class Employee < ApplicationRecord
    has_many :duties , dependent: :destroy
    validates :company_name, presence: true,
                    length: { minimum: 1 }
    validates :address, presence: true
    validates :name, presence: true,
                    length: { minimum: 1 }
    validates :position, presence: true
    validates :tax, presence: true

end
