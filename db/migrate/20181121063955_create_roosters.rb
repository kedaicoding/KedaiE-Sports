class CreateRoosters < ActiveRecord::Migration[5.2]
  def up
    create_table :roosters do |t|
      t.string :real_name
      t.string :nick_name
      t.string :role
      t.string :rank
      t.string :email
      t.string :foto
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :roosters
  end
  
end
