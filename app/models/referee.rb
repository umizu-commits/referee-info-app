class Referee < ApplicationRecord
end
class Referee < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :experience, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :organization, presence: true
end