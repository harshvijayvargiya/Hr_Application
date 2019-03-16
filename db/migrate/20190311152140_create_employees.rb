class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.date :date_of_joining
      t.string :marital_status
      t.string :status
      t.string :probation_duration
      t.date :confirmaton_date
      t.string :personal_email
      t.string :mobile_number
      t.string :alternate_mobile_number
      t.string :blood_group
      t.text :about
      t.string :profile_picture
      t.string :present_address
      t.string :permanent_address
      t.string :nationality
      t.string :city
      t.string :state
      t.string :country
      t.boolean :is_international_employee
      t.boolean :is_physically_challenged
      t.boolean :is_director

      t.timestamps
    end
  end
end
