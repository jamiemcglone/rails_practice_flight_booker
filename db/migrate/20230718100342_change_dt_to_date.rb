class ChangeDtToDate < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.change :departure_date, :date
    end
  end
end
