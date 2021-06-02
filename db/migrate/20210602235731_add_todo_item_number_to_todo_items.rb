class AddTodoItemNumberToTodoItems < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_items, :todo_item_number, :integer
  end
end
