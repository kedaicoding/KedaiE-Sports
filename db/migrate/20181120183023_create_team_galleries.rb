class CreateTeamGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :team_galleries do |t|
      t.string :file_name, null: false
      t.string :tag_gallery , null: false, limit: 25
      t.text :description, null: false, limit: 250
      t.integer :team_id
    end
  end
end
