class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.string :user_id, null: false, limit: 12
      t.string :url_h, limit: 16, null: false
      t.string :url, limit: 2048, null: false
      t.string :article_host, null: false
      t.string :article_path, null: false
      t.string :title, null: false
      t.date :date, null: false
      t.integer :value_id, null: false
      t.string :comment
      t.text :user_agent
      t.string :uid_h, null: false, limit: 20

      t.timestamps
    end
  end
end
