class Referent < ApplicationRecord
  belongs_to :proposal, optional: true
  validates :name, presence: true
  validates :surname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length:  {maximum: 255},
                      format: { with: VALID_EMAIL_REGEX}

end
