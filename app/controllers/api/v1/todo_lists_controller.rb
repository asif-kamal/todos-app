class Api::V1::TodoListsController < ApplicationController

    def index
        @todoLists = TodoLists.all
        render json: @todoLists
    end

    def create 
        @todoList = TodoList.create(todoItem_params)
        render json: @todoList
    end

   

    def destroy
        @todoList = TodoList.find(params[:id])
        @todoList.destroy
    end

    private

    def todoList_params
        params.require(:todoList).permit(:name)
    end
end

end
