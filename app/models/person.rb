class Person < ActiveRecord::Base
  # validates :email_address, :presence => true, :uniqueness => true
  belongs_to(:organization)
  belongs_to(:address)


end