class Project
    attr_reader :title
    @@all=[]
    def initialize(title)
        @title= title

    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def project_backed
        ProjectBacker.all.select do |projectbacked|
            projectbacked.project == self
    def backers
        project_backed.map do |x|
            x.backer
        end
    end
end