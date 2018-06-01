require 'pry'
require "bundler/setup"

class Scraper
  attr_accessor :name, :gross, :weeks
  @@doc = Nokogiri::HTML(open("https://www.imdb.com/chart/boxoffice/"))

  def self.today
    objects = self.scrape_imdb
    array = objects.first(3)
    array
  end



  def self.scrape_imdb

    movie_1= self.new
    movie_1.name = @@doc.css('td.titleColumn')[0].text.strip
    movie_1.gross = @@doc.css('span.secondaryInfo')[0].text.strip
    movie_1.weeks = @@doc.css('td.weeksColumn')[0].text.strip


    movie_2= self.new
    movie_2.name = @@doc.css('td.titleColumn')[1].text.strip
    movie_2.gross = @@doc.css('span.secondaryInfo')[1].text.strip
    movie_2.weeks = @@doc.css('td.weeksColumn')[1].text.strip


    movie_3= self.new
    movie_3.name = @@doc.css('td.titleColumn')[2].text.strip
    movie_3.gross = @@doc.css('span.secondaryInfo')[2].text.strip
    movie_3.weeks = @@doc.css('td.weeksColumn')[2].text.strip

    [movie_1, movie_2, movie_3]

  end

  

end
