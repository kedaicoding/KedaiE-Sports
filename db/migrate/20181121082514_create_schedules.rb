class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name
      t.references :scheduleable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
