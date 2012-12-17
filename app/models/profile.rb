class Profile < ActiveRecord::Base
  attr_accessible :name, :rollno, :section, :standard, :subject
  resourcify  
end
