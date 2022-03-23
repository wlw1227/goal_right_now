class ChangeHabitDayColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :checked_days, :day, :string
  end
end
