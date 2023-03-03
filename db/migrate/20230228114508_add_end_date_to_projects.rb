class AddEndDateToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :end_date, :string
  end
end
