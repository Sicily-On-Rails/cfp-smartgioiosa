class Proposal < ApplicationRecord
  has_one :referent
  accepts_nested_attributes_for :referent, allow_destroy: true

  has_many :members
  accepts_nested_attributes_for :members, allow_destroy: true
  validates :title, presence: true
  validates :team_name, presence: true
  validates :category_id, presence: true
  validates :answer1, presence: true
  validates :answer2, presence: true
  validates :detailed_description, presence: true

end
