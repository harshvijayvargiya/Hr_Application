class Relative < ApplicationRecord
  belongs_to :employee, optional: true
  GENDER = ["Male", "Female", "Others"]
  BLOODGROUP = ["A", "A+", "B", "B+", "A-", "B-", "O+", "O-"]
  validates :name, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :date_of_birth, presence: true
  validates :gender, presence: true
  validates :blood_group, presence: true
  validates :relation, presence: true
  validates :profession, presence: true
  validates :nationality, presence: true
  validates :address, presence: true
  validates :contact, presence: true
  validates :remarks, presence: true
end
