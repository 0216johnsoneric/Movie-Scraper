# class Movies
#
#   attr_accessor = :names_of_movies, :gross_revenue_of_movies, :weeks_in_boxoffice
#   @@doc = Nokogiri::HTML(open("https://www.imdb.com/chart/boxoffice/"))
#
#   def initialize
#     @names_of_movies = displayable_movie_titles
#     @gross_revenue_of_movies = displayable_gross_revenue
#     @weeks_in_boxoffice = displayable_weeks_in_boxoffice
#   end
#
#   def show_movies_names
#     @names_of_movies
#   end
#
#   def show_gross_revenues
#     @gross_revenue_of_movies
#   end
#
#   def show_weeks
#     @weeks_in_boxoffice
#   end
#
#   def displayable_movie_titles
#     movie_title_elements = @@doc.css('td.titleColumn')#magic stuff we just did
#     displayable_movie_titles = []
#     movie_title_elements.each do |x| displayable_movie_titles << x.text end
#     displayable_movie_titles.each do |x| x.strip! end
#   end
#
#   def displayable_gross_revenue
#     gross_revenue_elements = @@doc.css('span.secondaryInfo')
#     displayable_gross_revenue = []
#     gross_revenue_elements.each do |x| displayable_gross_revenue << x.text end
#   end
#
#   def displayable_weeks_in_boxoffice
#     weeks_in_boxoffice_elements = @@doc.css('td.weeksColumn')
#     displayable_weeks_in_boxoffice = []
#     weeks_in_boxoffice_elements.each do |x| displayable_weeks_in_boxoffice << x.text end
#   end
#
# end
