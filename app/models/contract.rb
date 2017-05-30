class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :user, presence: :true
  validates :service, presence: :true
end
