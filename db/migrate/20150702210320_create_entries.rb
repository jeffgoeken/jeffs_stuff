class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :date
      t.string :code
      t.string :escalated
      t.text :summary
      t.string :status
      t.string :created_by

      t.timestamps null: false
    end
  end
end
