class AdditionalFieldsOnHabits < ActiveRecord::Migration[6.1]
  def change
    add_column :habits, :started_at, :datetime
    add_column :habits, :ends_at, :datetime
  end
end
