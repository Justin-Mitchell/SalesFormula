class BlogPost < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :scoped, :scope => :blog_id
  
  has_many :blog_post_taggings
  has_many :categories, through: :blog_post_taggings
  
  def self.recent
    where("blog_id" => nil).order('published_at DESC').limit(3)
  end

  def thumbnail
    if parsed_content.search('img').first.blank?
      img_url = "/assets/blogging-default.jpg"
    else
      img_url = parsed_content.search('img').first.attributes["src"].value rescue nil
    end
  end

  def excerpt
    parsed_content.css('.excerpt').text
  end

  def plain_text
    @text ||= Nokogiri::HTML(content).text
  end

private

  def parsed_content
    @doc ||= Nokogiri::HTML(content).search('html > body > *')
  end
  
end