class CreateCheckedDayTable < ActiveRecord::Migration[6.1]
  def change
    create_table :checked_days do |t|
      t.belongs_to :user, index: true
      t.belongs_to :habit, index: true
  
      t.integer :day, default: nil
      t.timestamps
    end
  end
end
