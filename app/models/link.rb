class Link < ActiveRecord::Base
  has_many :comments, :as => :commentable
  has_many :points
  has_many :votes
  has_many :users, :through => :votes

  def link_score
    yesterdays_links = Link.where(:created_at => Date.yesterday)
  end
end


