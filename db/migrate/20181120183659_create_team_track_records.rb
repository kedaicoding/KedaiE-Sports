class CreateTeamTrackRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :team_track_records do |t|
      t.integer :team_id
      t.text :content
    end
  end
end
