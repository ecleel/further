class Site < ActiveRecord::Base
  has_one :further_information, as: :furtherable 
  attr_accessible :title, :url
end
