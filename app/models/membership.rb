class Membership < ActiveRecord::Base
  belongs_to :groups
  belongs_to :users
  attr_accessible :user_id, :group_id
end