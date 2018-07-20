# require "bundler/setup"
require "require_all"
require "pry"
require "open-uri"
require "nokogiri"
# require_all "lib"

require_relative "topmovie/version"
require_relative "topmovie/cli"
require_relative "topmovie/movie"
require_relative "topmovie/scraper"


module NowPlaying
end
