class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.integer :todo_list_id
      t.datetime :date
      t.string :task

      t.timestamps
    end
  end
end
