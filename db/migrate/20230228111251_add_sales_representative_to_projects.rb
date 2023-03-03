class AddSalesRepresentativeToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :sales_representative, null: true, foreign_key: {to_table: "memberships"}
  end
end
