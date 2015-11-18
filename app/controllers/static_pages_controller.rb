class StaticPagesController < ApplicationController
  
  require 'nokogiri'
  require 'open-uri'
  
  def home
    if(logged_in?)
      #redirect_to @current_user
    end

      #doc = Nokogiri::HTML(open("http://www.flotrack.org/"))
      #text = doc.css("#topStory")
      #text = doc.css('li')[0].text
      #puts(text)
      doc = Nokogiri::HTML(open("http://www.flotrack.org/"))
      @links = doc.css('section#recentBanners a')
      @titles = doc.css('section#recentBanners').css('strong').to_ary
      @title_images = doc.css('section#recentBanners').css('a img')
      
      puts(@titles)
      @hrefs = @links.map {|link| link.attribute('href').to_s}.delete_if {|href| href.empty?}
      @hrefs.to_ary
      puts("###########################################################################################")
      
      puts(@hrefs)
      puts("###########################################################################################")

      puts(@title_images)

  end
  
  def about
    
  end
end
  