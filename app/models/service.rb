class Service < ApplicationRecord
  has_many :users
  has_many :contracts
end
