require 'pry'
require "bundler/setup"

class TopMovie::Scraper
  attr_accessor :name, :gross, :weeks

  def self.scrape_imdb
    doc = Nokogiri::HTML(open("https://www.imdb.com/chart/boxoffice/"))
    movie= self.new
    movie.name = @@doc.css('td.titleColumn')[0].text.strip
    movie.gross = @@doc.css('span.secondaryInfo')[0].text.strip
    movie.weeks = @@doc.css('td.weeksColumn')[0].text.strip
    movie
  end
end
