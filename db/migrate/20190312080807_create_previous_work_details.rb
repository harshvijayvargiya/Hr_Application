class CreatePreviousWorkDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :previous_work_details do |t|
      t.string :company_name
      t.string :designation
      t.date :joining_date
      t.date :releiving_date
      t.integer :experience_in_years
      t.integer :experience_in_months
      t.string :nature_of_work
      t.string :role_at_work
      t.text :reason_for_leaving
      t.string :company_address
      t.string :company_website
      t.string :company_contact
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
