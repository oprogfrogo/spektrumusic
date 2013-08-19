class User < ActiveRecord::Base
  attr_accessible :email
  
  validates :email, :presence => {:message => "Please enter an email address"}, :allow_blank => true, :format => {:message => "The email address's format is invalid", :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}
  
end
