class TopMovie::List
  @@all = []

  def self.movies
    @@all << TopMovie::Scraper.scrape_imdb
    @@all
  end

  def self.list_movies
    puts "This weeks Top Movies:"
    puts " "
    movies.each.with_index(1) do |movie, i|
    puts "#{i}. #{movies.name}."
    end
  end
end
