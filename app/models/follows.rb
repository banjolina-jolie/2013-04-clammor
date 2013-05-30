class Follower < ActiveRecord::Base
  has_many :followers, :class_name => "User",
    :foreign_key => "user_id"
end


  # has_many :followers, :class_name => "User",
  #   :foreign_key => "user_id"
  # has_many :followed, 