class Member < ApplicationRecord
  belongs_to :proposal, optional: true
end
