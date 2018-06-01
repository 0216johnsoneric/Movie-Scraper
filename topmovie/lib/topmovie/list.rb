class List
  @@all = []

  def self.movies
    @@all << Scraper.scrape_imdb
    @@all
  end

  def self.list_movies
    puts "This weeks Top Movies:"
    puts ""
    puts "Type the 'Number' of the movie you would like information on or Type 'Exit' to exit the application."
    puts ""
    @movies = Scraper.today
    @movies.each.with_index(1) do |movie, i|
    puts "#{i}. Name- #{movie.name} Gross Revenue- #{movie.gross} Weeks in Boxoffice- #{movie.weeks}"
    
    end
  end
end
