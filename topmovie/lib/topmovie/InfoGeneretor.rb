class InfoGenerator
  attr_accessor = :names_of_movies, :movie_scores

  def initialize
    require 'pry'; binding.pry
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
    @names_of_movies = doc.css("magic selector")
  end
end

PATH = "http://superheroes.wikia.com/wiki"
PARAMS = { marvel: "/List_of_Marvel_Characters", dc: "/List_of_DC_Characters"}
def initialize(name)
    @name = name.downcase.titleize!
    @studio = self.studio_check
    return @name = false if @studio == nil
    @gen_info = self.gen_info
end

def self.lister(stud)
    curr_list = []
    doc = Nokogiri::HTML(open("#{PATH}#{PARAMS[stud]}")).css("#mw-content-text li a")
    doc.each {|x| curr_list << x.text}
    no_info = doc.map {|x| x.text if x.attr("href").include?("?") == true}
    no_info.delete(nil)
    curr_list.reject! {|x| no_info.include? x}
    return curr_list
end
