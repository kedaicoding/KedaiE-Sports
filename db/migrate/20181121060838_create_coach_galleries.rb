class CreateCoachGalleries < ActiveRecord::Migration[5.2]
  def up
    create_table :coach_galleries do |t|
      t.string :file_name
      t.string :tag_gallery
      t.text :description
      t.belongs_to :coach, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :coach_galleries
  end
  
end
