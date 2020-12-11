class Backer
    attr_reader :name
    @@all=[]
    def initialize(name)
        @name= name

    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def pro_back
        ProjectBacker.all.select do |projectbacked|
            projectbacked.backer == self
        end
    end
    def backed_projects
        pro_back.map do |x|
            x.project
        end
    end
end