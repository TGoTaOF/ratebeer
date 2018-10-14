class BeerClub < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :members, -> { distinct }, through: :memberships, source: :user

  validates :name, presence: true
  validates :founded, numericality: { greater_than_or_equal_to: 1040, less_than_or_equal_to: ->(_brewery) { Date.current.year }, only_integer: true }
end
