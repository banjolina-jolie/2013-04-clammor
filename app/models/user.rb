class User < ActiveRecord::Base
  # TODO implement association for User model. See user_spec.rb for specification.
  attr_accessible :name, :email, :status
  has_many :subscriptions
  has_many :posts
  has_many :comments
  has_one :status, :dependent => :destroy
  has_many :groups, :through => :subscriptions

  # TODO Implement validation for User model. See user_spec.rb for specification.
  validates :name, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :uniqueness => true

  # TODO Implement an after_create callback -- welcome_status
  after_create :welcome_status

  def welcome_status
    self.status = Status.create(:content => "I just joined Clammor!")
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips
  end
end
