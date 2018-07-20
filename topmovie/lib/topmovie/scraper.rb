class Scraper
  @@doc = Nokogiri::HTML(open("https://www.imdb.com/chart/boxoffice/"))

  def self.scrape_imdb
    movies = @@doc.css('table[data-caller-name="chart-boxoffice"] tr')
    movies.shift
    movies.each do|movie|

      new_movie = Movie.new
      new_movie.name = movie.css('td.titleColumn').text.strip
      new_movie.gross = movie.css('span.secondaryInfo').text.strip
      new_movie.weeks = movie.css('td.weeksColumn').text.strip
    end
  end
end
