class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_skills
  has_many :bookings
  has_many :skills, through: :user_skills
  validates :email, presence: true
  # validates :address, presence: true
  # validates :name, presence: true
end
