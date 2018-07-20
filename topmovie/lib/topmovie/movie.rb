class Topmovie::Movie
  @@all = []
  attr_accessor :name, :gross, :weeks

  def initialize (name=nil, gross=nil, weeks=nil)
    @name = name
    @gross = gross
    @weeks = weeks
    @@all << self
  end


  def self.movies
    @@all
  end

  def self.list_movies
    puts "This weeks Top Box Office Movies:"
    puts ""
    puts "Type the 'Number' of the movie you would like information on or Type 'Exit' to exit the application."
    puts ""
    movies = Topmovie::Movie.movies
    movies.each.with_index(1) do |movie, i|
    puts "#{i}. Name - #{movie.name}  |||  Gross Revenue - #{movie.gross}  |||  Weeks in Boxoffice - #{movie.weeks}"

    end
  end
end
