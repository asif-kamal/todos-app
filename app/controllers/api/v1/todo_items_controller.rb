class Api::V1::TodoItemsController < ApplicationController

    def index
        @todoItems = TodoItem.all
        render json: @todoItems
    end

    def create 
        @todoItem = TodoItem.create(todoItem_params)
        render json: @todoItem
    end

   

    def destroy
        @todoItem = TodoItem.find(params[:todo_list_id])
        @todoItem.destroy
    end

    private

    def todosItem_params
        params.require(:todosItem).permit(:date, :task, :todo_item_number)
    end
end
