class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :tweet, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps

      t.index [:user_id, :created_at]
    end
  end
end
