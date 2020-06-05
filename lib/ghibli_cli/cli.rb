#--- Notes
#Introduce user with a welcome
#Display movie list - Iterate with index 
# Give the user a movie selection - if/else
# Give the user another selection once they select the title - release_date, description director 

class Cli

    #1 welcome the user
    def run
        puts "Welcome to Ghibli films!"
        sleep 1
        puts "Top 20 Movies:"
        # sleep 1
        Api.get_movies
            #2 print list of movies
            print_movie_titles 
            selection
            # puts "Would you like to pick a movie? y/n"
        end

        def user_input
            gets.chomp 
        end

    def movie_title
        Ghibli_films.all.each_with_index do |film, index|
         puts " #{index + 1}. #{film.title}"
         #sleep 0.5
        end
    end    

    def print_movie_titles
        movie_title
    end

    #if user selects a movie title
    def test
        Ghibli_films.all.find do |film| 
             film.title = "Ponyo"
            puts film.title
        end
    end

    def selection
        puts "Would you like to pick a movie? y/n"
        input = user_input
        if input == "yes" || input == "y"
            puts "The user said yes"
        else
           puts "Goodbye"
        end
    end

    # def goodbye
    #     puts "Goodbye!"
    # end

end
