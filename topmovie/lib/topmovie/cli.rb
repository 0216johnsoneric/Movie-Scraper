class Topmovie::Cli

  def call
    Topmovie::Scraper.scrape_imdb
    menu
  end

  def hello
    puts "This application provides the weekly top boxoffice movies from the source https://www.imdb.com/chart/boxoffice/"
  end

  def menu
    hello
    list_movies
    input = nil
    while input != "exit"
      # list_movies
      prompt
      input = gets.strip.downcase



      if input.to_i > 0 && input.to_i <= Topmovie::Movie.all.count 
        the_movie_listing = Topmovie::Movie.all[input.to_i-1]
        puts "Movie Name: #{the_movie_listing.name}"
        puts "Gross Revenue: #{the_movie_listing.gross}"
        puts "Weeks in BoxOffice: #{the_movie_listing.weeks}"
      elsif input.downcase == 'exit'
        puts ""
        puts "Check back for more Top Box Office movie information in the future!"
        puts "Sayonara さよなら!"
        puts ""
      elsif input.downcase == 'list'
        list_movies
      else
        
        puts " I don't understand your input."
      end
    end
  end

  def list_movies
    puts "This weeks Top Box Office Movies:"
    puts ""
    # puts "Type the 'Number' of the movie you would like information on or Type 'Exit' to exit the application."
    # puts ""
    movies = Topmovie::Movie.all
    movies.each.with_index(1) do |movie, i|
      puts "#{i}. Name - #{movie.name}"
    
    end
    
  end

  def prompt 
    puts ""
    puts "Type the 'Number' of the movie you would like information on or Type 'List' to see the list of movies again, or Type 'Exit' to exit the application."
    puts ""
  end
end
