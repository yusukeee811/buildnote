class CreateHashtags < ActiveRecord::Migration[6.1]
  def change
    create_table :hashtags do |t|
      t.string :hashname

      t.timestamps
    end
  end
end
