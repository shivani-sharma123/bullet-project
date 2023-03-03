class AddTeamLeadToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :team_lead, :text
  end
end
