# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todoList = TodoList.create(name: "Morning Tasks")

todoItem = TodoItem.create(todo_list_id: 1, date: Date.today, task: "Brushing my teeth", todo_item_number: 1)