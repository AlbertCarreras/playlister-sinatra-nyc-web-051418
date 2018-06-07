class Song < ActiveRecord::Base
  extend Slugifiable::ClassMethod
  include Slugifiable::InstanceMethod


  has_many :song_genres
  belongs_to :artist
end
