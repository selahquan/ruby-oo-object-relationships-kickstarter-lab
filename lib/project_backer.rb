class ProjectBacker
    attr_reader :project, :backer
    @@all=[]
    def initialize(project, backer)
        self.class.all << self
        @project= project
        @backer= backer
    end
    def self.all
        @@all
    end
    def new(project, backer)
        ProjectBacker.new
    end
end