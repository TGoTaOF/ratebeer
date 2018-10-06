class BeerClub < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :members, -> { distinct }, through: :memberships, source: :user

  validates :name, presence: true
end
