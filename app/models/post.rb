class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user

  self.per_page = 5


  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end


end
