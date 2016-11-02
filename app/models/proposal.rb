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
  validates :file, presence: true

  mount_uploader :file, FileUploader
  store_in_background :file
  belongs_to :user
  belongs_to :category


  validate :at_least_one_contacts_team
  #validates_associated :user, :message => "You have already too much proposal."
  private
  def at_least_one_contacts_team
    # when creating a new contact: making sure at least one team exists
    return errors.add :base, "Deve essere presente almeno un membro" unless members.length > 0

    # when updating an existing contact: Making sure that at least one team would exist
    return errors.add :base, "Deve essere presente almeno un membro" if members.reject{|member| member._destroy == true}.empty?
  end



end
