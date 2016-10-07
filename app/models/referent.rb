class Referent < ApplicationRecord
  belongs_to :proposal, optional: true
end
