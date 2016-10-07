class Member < ApplicationRecord
  belongs_to :proposal, optional: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :profession, presence: true
end
