class Service < ApplicationRecord
  has_many :contracts
  belongs_to :user
  has_many :users, through: :contracts
end
