class Api
    #class constant - what is it's scope?
    BASE_URL = "https://ghibliapi.herokuapp.com"
    # class method vs instance
    def self.get_movies
        #what type of http request?
        response = RestClient.get(BASE_URL + "/films")
        #what is json?
        json = JSON.parse(response.body)
        #what does .each return
        json.each do |movie|
        # attributes: id, title, description, release_date, director
        #local variables - what are their scope?
         id = movie["id"]
         title = movie["title"]
         description = movie["description"]
         release_date = movie["release_date"]
         director = movie["director"]
        #binding.pry
        #what does .new do? What type of method is it?
        Studio_Ghibli.new(id, title, release_date, description, director)
        # binding.pry
        end
    end
end
#binding.pry
