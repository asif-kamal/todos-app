class TodoList < ApplicationRecord
    has_many :todo_item
    validates :name, presence: true 
end
