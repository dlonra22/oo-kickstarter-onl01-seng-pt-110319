class Backer
  attr_accessor :name, :backed_projects
  @@all = []  
  
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  
  def back_project(project)
    @backed_projects << project
    Project.add_backer(self)
  end
    
end
    