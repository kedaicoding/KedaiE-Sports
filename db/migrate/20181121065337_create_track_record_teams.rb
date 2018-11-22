class CreateTrackRecordTeams < ActiveRecord::Migration[5.2]
  def up
    create_table :track_record_teams do |t|
      t.belongs_to :team, foreign_key: true
      t.string :content

      t.timestamps
    end
  end

  def down
    drop_table :track_record_teams
  end
  
end
