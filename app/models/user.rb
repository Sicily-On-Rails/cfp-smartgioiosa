class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable, :confirmable
   has_many :proposals, dependent: :destroy
   validates_each :proposals do |user, attr, value|
   user.errors.add attr, "too much proposals for user" if user.proposals.size > 5
  end
end
