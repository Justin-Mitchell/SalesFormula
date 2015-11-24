class BlogPostTagging < ActiveRecord::Base
  belongs_to :category
  belongs_to :blog_post
end