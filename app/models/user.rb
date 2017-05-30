class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 validates :name, presence: :true
 validates :email, presence: :true, uniqueness: :true
 validates :skills, presence: :true

 has_many :contracts
 has_many :services

end
