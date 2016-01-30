class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  mount_uploader :picture, PictureUploader
end
