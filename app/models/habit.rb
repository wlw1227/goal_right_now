class Habit < ApplicationRecord
  belongs_to :user, optional: true
  has_many :checked_days

  before_commit :reset!, on: :create

  def reset! 
    date = DateTime.now.beginning_of_day

    self.update(started_at: date, ends_at: 29.days.from_now.beginning_of_day)
  end
end
