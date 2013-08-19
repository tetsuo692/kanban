class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.references :stack, index: true
      t.integer :position

      t.timestamps
    end
  end
end
