class Api
    BASE_URL = "https://ghibliapi.herokuapp.com"
    def self.get_movies
        response = RestClient.get(BASE_URL + "/films")
        json = JSON.parse(response.body)
        json.each do |movie|
        # attributes: id, title, description, release_date, director
         id = movie["id"]
         title = movie["title"]
         description = movie["description"]
         release_date = movie["release_date"]
         director = movie["director"]
        #binding.pry
         Ghibli_films.new(id, title, release_date, description, director)
        # binding.pry
        end
    end
end
#binding.pry
