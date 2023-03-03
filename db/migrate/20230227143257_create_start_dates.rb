class CreateStartDates < ActiveRecord::Migration[7.0]
  def change
    create_table :start_dates do |t|

      t.timestamps
    end
  end
end
