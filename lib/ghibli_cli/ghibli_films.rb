class Ghibli_films
    puts "cli loaded"

    attr_accessor :id, :title, :release_date, :description
    @@all = []
         
    def initialize(id, title, release_date, description)
        @id = id
        @title = title
        @release_date = release_date
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    self.save
    @@all
end

end