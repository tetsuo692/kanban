class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.string :title
      t.references :project
      t.integer :position

      t.timestamps
    end
    add_index :stacks, :project_id
  end
end
