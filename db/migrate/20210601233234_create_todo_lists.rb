class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.string :name
      t.integer :todo_item_number

      t.timestamps
    end
  end
end
