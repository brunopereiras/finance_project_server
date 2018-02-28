class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :entry_category, foreign_key: true
      t.string :name
      t.decimal :value
      t.date :date
      t.boolean :should_repeat
      t.integer :repeat_for
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
