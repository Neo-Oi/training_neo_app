class User < ApplicationRecord
  enum :role, {member: 0, admin: 1}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  validates :name,length:{maximum:255}
  validates :email,uniqueness: true,format: { with: Devise.email_regexp }
  validates :password,length:{maximum:255},length:{minimum:6}

  
  devise :database_authenticatable, :rememberable, :validatable
end
