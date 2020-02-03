class AddColumnToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :amount_raised, :integer, default: 0
  end
end
