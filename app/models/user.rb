class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :groups, through: :group_users
  has_many :group_users
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true, uniqueness: true, length:{maximum: 20}
end
