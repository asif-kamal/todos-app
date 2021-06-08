class Api::V1::TodoItemsController < ApplicationController

    def index
        @todoItems = TodoList.todoItems
        render json: @todoItems
    end

    def create 
        @todoItem = TodoItem.new(todoItem_params)
        if @todoItem.save?
            render json: @todoItem
        else
            render json: {error: 'Error: Check Parameters'}
    end

   

    def destroy
        @todoItem = TodoItem.find(params[:todo_list_id])
        @todoItem.destroy
    end

    private

    def set_todoList
        todoList.find(params[:todo_list_id])
    end

    def todosItem_params
        params.require(:todosItem).permit(:date, :task, :todo_item_number)
    end
end
