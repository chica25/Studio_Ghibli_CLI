class Studio_Ghibli

    attr_accessor :id, :title, :release_date, :description, :director
    @@all = []
         
    def initialize(id, title, release_date, description, director)
        @id = id
        @title = title
        @release_date = release_date
        @description = description
        @director = director
        @@all << self
    end

    def self.all
        self
        @@all
    end

end
puts self