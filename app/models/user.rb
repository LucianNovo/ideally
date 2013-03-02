class User < ActiveRecord::Base
  has_many :ideas

  attr_accessible :username, :password, :email
end
