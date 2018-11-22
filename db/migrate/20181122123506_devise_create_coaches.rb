# frozen_string_literal: true

class DeviseCreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      ## Database authenticatable
      t.string :nama,               null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :experience,         null: false, default: ""
      t.string :nick_name,          null: false, default: ""
      t.string :id_player,          null: false, default: ""
      t.text   :alamat,             null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      # t.belongs_to :team, foreign_key: true
      # t.belongs_to :coach_gallery, foreign_key: true
      # t.belongs_to :track_record_coach, foreign_key: true
      # t.belongs_to :schedule, foreign_key: true


      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      # Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      # Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :coaches, :email,                unique: true
    add_index :coaches, :reset_password_token, unique: true
    add_index :coaches, :confirmation_token,   unique: true
    add_index :coaches, :unlock_token,         unique: true
  end
end
