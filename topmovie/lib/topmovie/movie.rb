# require 'pry'
# require "bundler/setup"
#
#
# class movies
#   attr_accessor :name, :gross, :weeks
#   @@doc = Nokogiri::HTML(open("https://www.imdb.com/chart/boxoffice/"))
#
#   def self.today
#     self.movie_info
#     self.more_info
#   end
#
#   def self.movie_info
#     puts "Todays Top Box Office Movie"
#
#     movie_1 = self.new
#     movie_1.name =  @@doc.css('td.titleColumn')[0].text.strip
#     movie_1.gross = @@doc.css('span.secondaryInfo')[0].text.strip
#     movie_1.url = @@doc.css('td.weeksColumn')[0].text.strip.attr("href").value
#
#     movie_2 = self.new
#     movie_2.name = @@doc.css('td.titleColumn')[1].text.strip
#     movie_2.score = @@doc.css('span.secondaryInfo')[1].text.strip
#     movie_2.url = @@doc.css('td.weeksColumn')[1].text.strip.attr("href").value
#
#     movie_3 = self.new
#     movie_3.name = @@doc.css('td.titleColumn')[2].text.strip
#     movie_3.score = @@doc.css('span.secondaryInfo')[2].text.strip
#     movie_3.url = @@doc.css('td.weeksColumn')[2].text.strip.attr("href").value
#
#     [movie_1, movie_2, movie_3]
#   end
#
#   def self.more_info
#     top_movies = self.movie_info
#   end
# end
#
#
#   #
#   #   movie = self.new
#   #   titles = []
#   #   movie.title = doc.css().each do |i|
#   #     titles << i.text
#   #   end
#   #   titles
#   # end
#   #
#   # def self.scrape_movies_1
#   #   doc = Nokogiri::HTML(open(""))
#   #   movie = self.new
#   #
#   #   movie =
