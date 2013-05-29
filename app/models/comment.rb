class Comment < ActiveRecord::Base
  validates :content, :presence => true
  # TODO Implement Comment associations. See comment_spec.rb for specification.
  belongs_to :user_id
  belongs_to :post_id
  # TODO Implement Comment validations. See comment_spec.rb for specification.
  
end
