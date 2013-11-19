class FurtherInformation < ActiveRecord::Base
  belongs_to :furtherable, polymorphic: true
  attr_accessible :info

  store :info
end
