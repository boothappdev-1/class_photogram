class User < ActiveRecord::Base
  has_many :own_photos, :class_name => "Photo", :foreign_key => "owner_id"

  has_many :favoritings, :class_name => "Favoriting", :foreign_key => "favorited_by_id"

  has_many :comments, :class_name => "Comment", :foreign_key => "commenter_id"

  validates :email, :presence => true, :uniqueness => true
end
