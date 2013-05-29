class Comment < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true
  # TODO Implement Comment associations. See comment_spec.rb for specification.
  belongs_to :user
  belongs_to :post
  # TODO Implement Comment validations. See comment_spec.rb for specification.
end
