class Service < ApplicationRecord
  has_many :contracts, dependent: :destroy
  belongs_to :user
  has_many :users, through: :contracts
end
