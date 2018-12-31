class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :from, nil: false
      t.string :tw_uid, nil: false
      t.string :tw_screen_name, nil: false
      t.string :tw_name, nil: false
      t.string :name, nil: false
      t.boolean :active_flag, default: 1
      t.string :email
      t.string :tw_token
      t.string :tw_secret

      t.timestamps
    end
  end
end
