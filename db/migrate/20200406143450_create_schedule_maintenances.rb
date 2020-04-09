class CreateScheduleMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_maintenances do |t|
      t.references :staff, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :date
      t.string :number_phone
      t.string :car_name

      t.timestamps
    end
  end
end
