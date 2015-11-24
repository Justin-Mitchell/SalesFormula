class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :scoped, :scope => :blog_id
    
  has_many :blog_post_taggings
  has_many :blog_posts, through: :blog_post_taggings
end