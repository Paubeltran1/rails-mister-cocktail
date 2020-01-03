class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  before_destroy :check_for_doses

  private

  def check_for_doses
    doses.count.zero?
  end
end
