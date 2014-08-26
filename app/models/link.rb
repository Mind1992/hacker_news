class Link < ActiveRecord::Base
  has_many :votes
  has_many :users, :through => :votes

  # def self.vote_count
  #   link_count = []
  #   Link.all.each do |link|
  #     votes = Vote.where(link_id: link.id)
  #     link_count << votes.count
  #   end
  # end
end


