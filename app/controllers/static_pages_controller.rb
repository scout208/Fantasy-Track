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
      puts(@titles)
      @hrefs = @links.map {|link| link.attribute('href').to_s}.delete_if {|href| href.empty?}
      @hrefs.to_ary
      puts(@hrefs)
      @srcs = @title_images.map {|images| images.attribute('src').to_s}.delete_if {|src| src.empty?}
      @srcs.to_ary
      puts(@srcs)

  end
  
  def about
    
  end
end
  