class CreateTrackRecordCoaches < ActiveRecord::Migration[5.2]
  def up
    create_table :track_record_coaches do |t|
      t.belongs_to :coach, foreign_key: true
      t.string :content

      t.timestamps
    end
  end

  def down
    drop_table :track_record_coaches
  end
  
end
