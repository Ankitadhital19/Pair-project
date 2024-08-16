class Organization < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  accepts_nested_attributes_for :memberships
end
