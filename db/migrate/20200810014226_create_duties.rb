class CreateDuties < ActiveRecord::Migration[6.0]
  def change
    create_table :duties do |t|
      t.text :work_description
      t.date :date
      t.integer :income
      t.text :notes
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
