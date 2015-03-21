class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user

  self.per_page = 5
end
