class Company < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :trucks

  validates :email, presence: true
  validates :name, presence: true
  validates :phone_number, presence: true
end
