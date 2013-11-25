class Site < ActiveRecord::Base
  attr_accessible :title, :url
  further :data
end
