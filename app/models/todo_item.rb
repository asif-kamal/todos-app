class TodoItem < ApplicationRecord
    belongs_to :todo_list
    validates :task, presence: true 
end
