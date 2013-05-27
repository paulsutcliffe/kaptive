class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :email, :message, :name, :presence => true
  validates :name, :length => { :maximum => 200 }
  validates :email, :length => { :maximum => 100 },
    :format => EMAIL_REGEX

end
