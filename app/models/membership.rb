class Membership < ActiveRecord::Base
  has_one :site, :dependent => :destroy
  
  def create_and_subscribe(customer_hash)
    raise
  end
  
  def subscription
    @subscription ||= Chargify::Subscription.find(subscription_id)
  end
  
end