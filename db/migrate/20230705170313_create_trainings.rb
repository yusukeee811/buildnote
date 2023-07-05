class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string  :name,       null: false
      t.decimal :weight,     null: false
      t.integer :repetition, null: false
      t.integer :set,        null: false
      t.timestamps
    end
  end
end
