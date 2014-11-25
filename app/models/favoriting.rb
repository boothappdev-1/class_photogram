class Favoriting < ActiveRecord::Base
  belongs_to :photo

  belongs_to :favorited_by, :class_name => "User", :foreign_key => "favorited_by_id"

  validates :photo, :presence => true
  validates :favorited_by, :presence => true
end
