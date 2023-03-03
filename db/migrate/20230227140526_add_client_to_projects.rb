class AddClientToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :client, :text
  end
end
