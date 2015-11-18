class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable,
  #        :authentication_keys => [:email]
                  
  attr_accessor   :credit_card_number, :cvv
  # attr_accessible :title, :body
  
  def normalize_street_address
      address = StreetAddress::US.parse("#{self.office_street_address}, #{self.office_city}, NV, #{self.office_zipcode}")
      if address
          return "#{address.number} #{address.prefix.gsub(/[^A-Z]/, '') rescue ''} #{address.street} #{address.street_type.gsub(/[^A-Za-z]/, '') rescue ''} #{address.suffix.gsub(/[^A-Za-z]/, '') rescue ''} #{address.unit_prefix.gsub(/[^A-Za-z]/, '') rescue ''} #{address.unit.gsub(/[^0-9A-Z]/, '') rescue ''}".split.join(" ")
      end
  end
  
  def name
    [self.first_name, self.last_name].compact.join(' ')
  end
  
end
