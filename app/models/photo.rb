class Photo < ActiveRecord::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  has_many :favoritings

  has_many :comments

  validates :owner, :presence => true
  validates :source, :presence => true

end
