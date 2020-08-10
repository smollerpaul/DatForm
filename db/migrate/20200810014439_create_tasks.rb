class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :work_description
      t.date :date
      t.integer :income
      t.string :customer
      t.references :freelancer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
