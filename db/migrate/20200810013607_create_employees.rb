class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :company_name
      t.string :tax
      t.text :address
      t.string :name
      t.text :position

      t.timestamps
    end
  end
end
