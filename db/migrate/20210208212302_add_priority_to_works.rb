class AddPriorityToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :priority, :string
  end
end
