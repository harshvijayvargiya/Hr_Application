class CreateRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :relatives do |t|
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :relation
      t.string :profession
      t.string :nationality
      t.string :address
      t.string :contact
      t.text :remarks
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
