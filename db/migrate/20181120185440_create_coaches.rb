class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :nama, null: false, limit: 35 
      t.string :foto
      t.string :game, null: false, limit: 30
      t.string :experience_in_game, null: false
      t.string :nickname, null: false, limit: 35
      t.string :id_player, null: false, limit: 35
      t.text   :alamat, null: false
      t.string :email, null: false, limit: 55

      t.timestamps
    end
  end
end
