class Movie
  @@all = []
  attr_accessor :name, :gross, :weeks
  # Movie class initialize method:

  def initialize (name, gross, weeks)
    @name = name
    @gross = gross
    @weeks = weeks
    @@all << self
  end

  def self.movies
    # @@all << Scraper.scrape_imdb
    @@all
  end

  def self.list_movies
    puts "This weeks Top Box Office Movies:"
    puts ""
    puts "Type the 'Number' of the movie you would like information on or Type 'Exit' to exit the application."
    puts ""
    movies = Scraper.today
    movies.each.with_index(1) do |movie, i|
    puts "#{i}. Name- #{movie.name} Gross Revenue- #{movie.gross} Weeks in Boxoffice- #{movie.weeks}"

    end
  end

  # def self.all
  #   @@all
  # end
end
