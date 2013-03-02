class Idea < ActiveRecord::Base
  
  belongs_to :user
    
  attr_accessible :title,:idea,:description, :ticket, :tag,:visible
  
end
