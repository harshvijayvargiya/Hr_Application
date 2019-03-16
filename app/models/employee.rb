class Employee < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :middle_name, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :last_name, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :gender, presence: true
  validates :date_of_birth, presence: true
  validates :date_of_joining, presence: true
  validates :marital_status, presence: true
  validates :status, presence: true
  validates :probation_duration, presence: true
  validates :confirmaton_date, presence: true
  validates :personal_email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :mobile_number, presence: true, numericality: true, length: { maximum: 10 }, uniqueness: true
  validates :alternate_mobile_number, presence: true, numericality: true, length: { maximum: 10 }, uniqueness: true
  validates :blood_group, presence: true
  validates :about, presence: true
  validates :profile_picture, presence: true
  validates :present_address, presence: true
  validates :permanent_address, presence: true
  validates :nationality, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  GENDER = ["Male","Female","Others"]
  MARITAL_STATUS = ["Single","Married","Widow","Separated"]
  STATUS = ["Active", "Terminated", "On Notice"]
  BLOODGROUP = ["A", "A+", "B", "B+", "A-", "B-", "O+", "O-"]
  mount_uploader :profile_picture, EmployeeImageUploader
  has_many :relatives
  has_many :previous_work_details
  scope :active_employees, -> { where(status: 'Active') }
  scope :terminated_employees, -> { where(status: 'Terminated') }
  scope :on_notice_employees, -> { where(status: 'On_Notice') }

  scope :scoped_employee, -> (status) { where(status: status) }

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end

end