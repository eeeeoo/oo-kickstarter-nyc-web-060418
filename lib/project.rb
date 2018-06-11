require 'pry'
class Project

  @@all = []
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @@all << self
    @backers = []
  end

  def self.all
    @@all
  end

  def add_backer(backers)
    backers = Backer.all
    backers.each do |backer|
      @backers << backer
      backer.backed_projects << self
    end

  end
end
