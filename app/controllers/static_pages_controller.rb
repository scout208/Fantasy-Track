class StaticPagesController < ApplicationController
  
  require 'nokogiri'
  require 'open-uri'
  
  def home
    if(logged_in?)
    
    end

      doc = Nokogiri::HTML(open("http://www.flotrack.org/"))
      @links = doc.css('section#recentBanners a')
      @titles = doc.css('section#recentBanners').css('strong').to_ary
      @title_images = doc.css('section#recentBanners').css('a img')
      @hrefs = @links.map {|link| link.attribute('href').to_s}.delete_if {|href| href.empty?}
      @hrefs.to_ary
      @srcs = @title_images.map {|images| images.attribute('src').to_s}.delete_if {|src| src.empty?}
      @srcs.to_ary
  end
  
  def about
    
  end
  
  def scoring_rules
  
  end
  
  def recent_meet
      @availablemeets = []
     @meets = Meet.all()
     @meets.each do |meet|
     @availablemeets << meet if meet.released == true
    end
  end
  
end
  