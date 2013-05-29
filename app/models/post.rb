class Post < ActiveRecord::Base
  attr_accessible :title, :content
  # TODO Implement Post associations. See post_spec.rb for specification.
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :user
  has_many :comments


  # TODO Implement Post validations. See post_spec.rb for specification.

end
