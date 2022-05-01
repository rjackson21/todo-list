class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.last
    @todo_new = Todo.new

  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todos = Todo.all

   # @todo.content = params[:content]
   # @todo.complete = params[:complete]

    if @todo.save
      redirect_to @todo
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:content, :title)
  end


end
