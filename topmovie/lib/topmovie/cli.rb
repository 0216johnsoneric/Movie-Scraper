require "pry"
require_relative "../environment"

class Cli

  def call
    menu
  end

  def hello
    puts "This application provides the weekly top boxoffice movies from the source https://www.imdb.com/chart/boxoffice/"
  end

  def menu
    hello
    @movie = List.list_movies
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        the_movie_list = @movie[input.to_i-1]
        puts "Movie Name: #{the_movie_list.name}"
        puts "Gross Revenue: #{the_movie_list.gross}"
        puts "Weeks in BoxOffice: #{the_movie_list.weeks}"
      elsif input == 'exit'
        puts "Check back for more top Box Office movie information in the future! Sayonara さよなら!"
      else
        puts " Please select 'exit' or a Movie Number "
      end
    end
  end
end
