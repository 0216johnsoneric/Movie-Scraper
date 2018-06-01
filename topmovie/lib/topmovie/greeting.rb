module Greeting

  def hello
    puts <<-HEREDOC
      This application provides the weekly top boxoffice movies from the source https://www.imdb.com/chart/boxoffice/
      Selecting each option will provide you with The name of the movie, its weekly gross revenue, and the number of weeks its been playing in the boxoffice.\n
    HEREDOC
  end

  def goodbye
    "Check back for more top movie boxoffice information in the future! Sayonara さよなら!"
  end

end
