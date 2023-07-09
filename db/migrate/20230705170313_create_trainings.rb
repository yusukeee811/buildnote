class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.references :user, null: false, foreign_key: true
      t.string  :name,       null: false
      t.decimal :weight, null: false
      t.integer :repetition, null: false
      t.integer :set,        null: false
      t.datetime :start_time
      t.timestamps
    end
  end
end
