class RemoveTodoItemNumberFromTodoLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :todo_lists, :todo_item_number, :integer
  end
end
