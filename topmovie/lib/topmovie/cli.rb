require "pry"
require_relative "../environment"
require_relative "greeting"

class TopMovie::CLI
  include Greeting

  def menu
    hello
    @movie = TopMovie::List.list_movies
    input = nil
    while input != "exit"
      puts " "
      puts "Type the 'number' of the movie you would like information on. Type 'list' to see the list of top boxoffice movies. Type 'exit' to exit application."
      input = gets.strip.downcase

      if input.to_i > 0
        the_movie_list = @movie[input.to_i-1]
        puts "Movie Name: #{the_movie_list.name}"
        puts "Gross Revenue: #{the_movie_list.gross}"
        puts "Weeks in BoxOffice: #{the_movie_list.weeks}"
      elsif input == 'exit'
        goodbye
      else
        puts " Please select 'exit' or a Movie Number "
      end
    end
  end
end


  # def list
  #   puts "This weeks top 3 Movies:"
  #   puts " "
  #   @top_movies = Movie.today
  #   @top_movies.each.with_index(1) do |movie, i|
  #     puts "#{i}. '#{movies.name}' - Gross Score #{movies.gross_score}"
  #   end
  #   puts ""
  # end

#   def options
#     input = nil
#     while input != "exit"
#       puts " "
#       puts "Type the 'number' of the movie you would like information on. Type 'list' to see the list of top boxoffice movies. Type 'exit' to exit application."
#       input = gets.strip.downcase
#       if input.to_i > 0 && input.to_i < 4
#         case input
#         when "1"
#           puts "Information about Movie 1"
#           @movie = Movie.today
#           puts " "
#         when "2"
#           puts "Information about Movie 2"
#           @movie = Movie.today
#           puts " "
#         when "3"
#           puts "Information about Movie 3"
#           @movie = Movie.today
#           puts " "
#         end
#       elsif input == 'list'
#         list
#       elsif input == 'exit'
#         "Sayonara さよなら"
#       else
#         puts "Type list for list of movies. Type exit to exit application."
#       end
#     end
#   end
# end
#   # end
#
# #     # def goodbye
# #   puts "Check back for more top movie boxoffice information in the future!"
# #     # end
# # end
