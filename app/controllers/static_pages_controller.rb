class StaticPagesController < ApplicationController
  
  require 'nokogiri'
  require 'open-uri'
  
  def home
    if(logged_in?)
    
    end
  
      doc = Nokogiri::HTML(open("http://www.flotrack.org/"))
      @links = []
      @titles = []
      @srcs = []
      headlines = doc.css('section.headlines').css('div.figure-mask').map do |h|
        @links += [h.at_css("a")['href']]
        @titles += [h.at_css("img").attr('alt')]
        @srcs += [h.at_css("img").attr('src')]
      end

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
  