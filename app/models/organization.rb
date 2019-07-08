class Organization < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :domain, presence: true
end
