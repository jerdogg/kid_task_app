class CreateProgramItems < ActiveRecord::Migration[5.1]
  def change
    create_table :program_items do |t|
      t.integer :program_id
      t.integer :task_id
      t.integer :position
      t.references :program, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
