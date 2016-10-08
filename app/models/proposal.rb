class Proposal < ApplicationRecord
  has_one :referent,  dependent: :destroy
  accepts_nested_attributes_for :referent, allow_destroy: true

  has_many :members, dependent: :destroy
  accepts_nested_attributes_for :members, allow_destroy: true
  validates :title, presence: true
  validates :team_name, presence: true
  validates :category_id, presence: true
  validates :answer1, presence: true
  validates :answer2, presence: true
  validates :detailed_description, presence: true
  validates :description, presence: true
  validates :privacy, presence: true

  mount_uploader :file, FileUploader
  store_in_background :file
  belongs_to :user
  belongs_to :category
  validates_associated :user, :message => "You have already too much proposal."
end
