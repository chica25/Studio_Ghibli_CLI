class Cli
        def run
        puts "Welcome to Ghibli films!"
       # sleep 1
        puts "Here is a list of movies"
        #sleep 1
        Api.get_movies
        print_movie_titles 
        test
        puts "Would you like to pick a movie? y/n"
    end

    def user_input
        gets.chomp 
    end

    def movie_title
        Ghibli_films.all.each_with_index do |film, index|
         puts " #{index + 1}. #{film.title}"
         sleep 0.5
        end
    end    

    def print_movie_titles
        movie_title
    end

    def test
        Ghibli_films.all.find do |film| 
             film.title = "Ponyo"
            puts film.title
        end
    end

    def selection
        user_input 
        if user_input == "y"

        else
            goodbye
        end
    end

    def goodbye
        puts "Goodbye!"
    end

end
# def selection
#     puts "Please enter the movie title:"
#     user_input = gets.strip.downcase
#     if user_input == "#{@title}" 
#     else
#         puts "Please make another selection"
#         #binding.pry
#     end

# end