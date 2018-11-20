class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :nama_team, null: false, limit: 25
      t.string :logo_team
      t.text :alamat, null: false
      t.string :game, null: false
      t.text :email, null: false
      t.string :manajer , limit: 25

      t.timestamps
    end
  end
end
