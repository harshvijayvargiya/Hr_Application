class PreviousWorkDetail < ApplicationRecord
  belongs_to :employee, optional: true
  validates :company_name, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :designation, presence: true
  validates :nature_of_work, presence: true
  validates :joining_date, presence:true
  validates :releiving_date, presence: true
  validates :experience_in_years, presence: true
  validates  :experience_in_months, presence: true
  validates :role_at_work, presence: true
  validates :reason_for_leaving, presence: true
  validates :company_address, presence: true
  validates :company_website, presence: true
  validates :company_contact, presence: true  
end
