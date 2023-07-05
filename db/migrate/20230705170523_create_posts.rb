class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :caption, null: false
      t.string :hashtag
      t.timestamps
    end
  end
end
