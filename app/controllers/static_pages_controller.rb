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
      links = doc.css('section#recentArticles a')
      titles = doc.css('section#recentArticles').css('strong')
      puts(titles)
      hrefs = links.map {|link| link.attribute('href').to_s}.uniq.sort.delete_if {|href| href.empty?}
      puts("###########################################################################################")
      puts(hrefs)

  end
end
  