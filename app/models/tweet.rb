require_relative './concerns/slugifiable.rb'

class Tweet < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  belongs_to :user
end
