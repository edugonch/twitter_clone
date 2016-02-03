class CreateTwitts < ActiveRecord::Migration
  def change
    create_table :twitts do |t|
      t.string :text
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
