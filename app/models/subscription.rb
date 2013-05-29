class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
   belongs_to :group
   belongs_to :user
  #validate :active_customer, :on => :create
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  
  validate :renew_date_is_valid_datetime

  def renew_date_is_valid_datetime
    unless renew_date
      errors.add(:renew_date, "is invalid")
    end
    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips 
  end
end
