class Proposal < ApplicationRecord
  has_one :referent
  accepts_nested_attributes_for :referent, allow_destroy: true

  has_many :members
  accepts_nested_attributes_for :members, allow_destroy: true
end
