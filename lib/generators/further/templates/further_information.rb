class FurtherInformation < ActiveRecord::Base
  belongs_to :furtherable, polymorphic: true
  store :info
  attr_accessible :info
end
