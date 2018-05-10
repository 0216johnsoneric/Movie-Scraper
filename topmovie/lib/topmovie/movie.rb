require 'pry'


class TopMovies::Movies

  attr_accessor :name, :score, :url, :top_movies, :cc, :score

  def self.today
    self.movie_info
    self.more_info
  end

  def self.movie_info
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
    puts "Todays Top Box Office Movies"

    movie_1 = self.new
    movie_1.name = doc1.css()[0].text.strip
    movie_1.score = doc1.css()[0].text.strip
    movie_1.url = doc1.css()[0].text.strip.attr("")

    movie_2 = self.new
    movie_2.name = doc1.css()[1].text.strip
    movie_2.score = doc1.css()[1].text.strip
    movie_2.url = doc1.css()[1].text.strip.attr("")

    movie_3 = self.new
    movie_3.name = doc1.css()[2].text.strip
    movie_3.score = doc1.css()[2].text.strip
    movie_3.url = doc1.css()[2].text.strip.attr("")

    [movie_1, movie_2, movie_3]
  end

  def self.more_info
    top_movies = self.movie_info




  #   movie = self.new
  #   titles = []
  #   movie.title = doc.css().each do |i|
  #     titles << i.text
  #   end
  #   titles
  # end
  #
  # def self.scrape_movies_1
  #   doc = Nokogiri::HTML(open(""))
  #   movie = self.new
  #
  #   movie =
