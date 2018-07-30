class Topmovie::Movie
  @@all = []
  attr_accessor :name, :gross, :weeks

  def initialize (name=nil, gross=nil, weeks=nil)
    @name = name
    @gross = gross
    @weeks = weeks
    @@all << self
  end


  def self.all
    @@all
  end

  
end
