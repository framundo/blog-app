class Post < ActiveRecord::Base
  validates_presence_of :title, :description

  has_many :comments
end
