class Genre < ActiveRecord::Base
  extend Slugifiable::ClassMethod
  include Slugifiable::InstanceMethod

  has_many :song_genres
end
