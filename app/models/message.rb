class Message < ActiveRecord::Base
  attr_accessible :body
  validates_presence_of :body
end
