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
    @movie = Topmovie::Movie.list_movies
    input = nil
    while input != "exit"
      input = gets.strip.downcase



      if input.to_i > 0 && input.to_i < 11
        the_movie_list = @movie[input.to_i-1]
        puts "Movie Name: #{the_movie_list.name}"
        puts "Gross Revenue: #{the_movie_list.gross}"
        puts "Weeks in BoxOffice: #{the_movie_list.weeks}"
      elsif input == 'exit'
        puts "Check back for more Top Box Office movie information in the future!"
        puts "Sayonara さよなら!"
      else
        puts " Please select 'Exit' or select a Movie Number between 1 - 10"
      end
    end
  end
end
