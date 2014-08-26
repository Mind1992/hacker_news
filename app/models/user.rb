class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email

  has_many :votes
  has_many :links, :through => :votes
end
