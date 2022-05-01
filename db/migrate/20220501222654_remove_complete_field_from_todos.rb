class RemoveCompleteFieldFromTodos < ActiveRecord::Migration[7.0]
  def change
    remove_column :todos, :complete, :boolean
  end
end
