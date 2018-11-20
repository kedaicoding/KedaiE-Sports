class CreateRoosters < ActiveRecord::Migration[5.2]
  def change
    create_table :roosters do |t|
      t.string :real_name, null: false, limit: 35
      t.string :nickname, null: false, limit: 25
      t.string :role, null: false, limit: 25
      t.string :rank, null: false, limit: 35
      t.integer :team_id
      t.string :email, null: false, limit: 55
      t.string :foto
    end
  end
end
