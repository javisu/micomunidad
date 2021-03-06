class User < ActiveRecord::Base
 authenticates_with_sorcery!
  before_save :lowercase_email
  attr_accessible :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  has_many :memberships
  has_many :groups, :through => :memberships

  def lowercase_email
  	self.email = self.email.downcase
  end

end
