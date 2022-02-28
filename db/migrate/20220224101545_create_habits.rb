class CreateHabits < ActiveRecord::Migration[6.1]
  def change
    create_table :habits do |t|
      t.string :description

      t.timestamps
    end
  end
end
