class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :username, :login, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
end
