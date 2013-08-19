class User < ActiveRecord::Base
  attr_accessible :email
  
  validates :email, :uniqueness => {:message => "address already exists"}, :presence => {:message => "address can't be blank"}, :allow_blank => true, :format => {:message => "address's format is invalid", :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}
  
end
