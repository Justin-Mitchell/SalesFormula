class BlogsController < ApplicationController
  
  def index
    @posts = BlogPost.recent
  end
  
  def show
  end
  
end