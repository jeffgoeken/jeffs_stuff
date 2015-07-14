class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :Body
      t.string :Initials
      t.references :entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
