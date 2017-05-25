class Bookmark < ApplicationRecord
validates :movie_id, :presence => true, :uniqueness => { :scope => :user_id, :message => "already bookmarked" }
belongs_to :movie
belongs_to :user
end
