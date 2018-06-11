require 'pry'
class Backer
  attr_reader :name, :backed_projects

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @backed_projects = []
  end

  def self.all
    @@all
  end

  def back_project(projects)
    projects = Project.all
    projects.each do |project|
      @backed_projects << project
      project.backers << self
    end
  end

end
