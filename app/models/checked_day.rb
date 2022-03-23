class CheckedDay < ApplicationRecord
  belongs_to :user
  belongs_to :habit

  validates_uniqueness_of :day, scope: [:user, :habit]
end