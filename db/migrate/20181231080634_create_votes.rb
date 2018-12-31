class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.string :title
      t.string :url, limit: 2048

      t.timestamps
    end
  end
end
