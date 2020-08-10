class CreateFreelancers < ActiveRecord::Migration[6.0]
  def change
    create_table :freelancers do |t|
      t.string :name
      t.string :position
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
