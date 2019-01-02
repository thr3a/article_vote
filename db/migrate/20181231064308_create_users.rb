class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false do |t|
      t.string :id, null: false, primary_key: true, limit: 12
      t.string :tw_uid, null: false
      t.string :tw_screen_name, null: false
      t.string :tw_name, null: false
      t.string :name, null: false
      t.boolean :active_flag, null: false, default: 1
      t.string :email
      t.string :tw_token
      t.string :tw_secret

      t.timestamps
    end
  end
end
