class ChangeFlightDurationToInteger < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.change :flight_duration, :integer 
    end
  end
end

