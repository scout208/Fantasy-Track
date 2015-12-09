class StaticPagesController < ApplicationController
  
  require 'nokogiri'
  require 'open-uri'
  
  def home
    if(logged_in?)
    
    end

      doc = Nokogiri::HTML(open("http://www.flotrack.org/"))
<<<<<<< HEAD
      @links = doc.css('div.figure-mask').css('a')
      @title_images = doc.css('div.figure-mask').css('a img')
      @titles = @title_images.map{|images| images['alt']}.delete_if {|alt| alt.empty?}
      @titles.to_ary
      @hrefs = @links.map {|link| link['href']}.delete_if {|href| href.empty?}
      @hrefs.to_ary
      @srcs = @title_images.map {|images| images.attribute('src').to_s}.delete_if {|src| src.empty?}
      @srcs.to_ary
=======
     #@links = doc.css('section#recentBanners a')
     #@titles = doc.css('section#recentBanners').css('strong').to_ary
     # @title_images = doc.css('section#recentBanners').css('a img')
     # @hrefs = @links.map {|link| link.attribute('href').to_s}.delete_if {|href| href.empty?}
     # @hrefs.to_ary
     # @srcs = @title_images.map {|images| images.attribute('src').to_s}.delete_if {|src| src.empty?}
      #@srcs.to_ary
      
      #links = doc.css()
      

      #@links = doc.css('div.figure-mask').map do |
      #puts(@links)
      #puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
      #puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
      #@titles = doc.css('section#figure-mask').css()
      #@hrefs = @links.map {|link| link.attribute('href').to_s}.delete_if {|href| href.empty?}
      #@hrefs.to_ary
  
      @links = []
      @titles = []
      headlines = doc.css('div.figure-mask').map do |h|
        @links += [h.at_css("a")['href']]
        @titles += [h.at_css("img").attr('alt')]

        puts(@links)
        puts(@titles)
        puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
      end
      
     # @links.to_ary
      #@titles.to_ary
      #puts(@links)
      #puts(@titles)
      #puts("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
      
      

      
>>>>>>> 63dfbf6b67c11cfdcf6f1aab5529d0ac5601703b
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
  