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
        # sleep 1
        Api.get_movies
        movie_list
        movie_selection
        list_selection
            #2 print list of movies
            #print_movie_titles 
            #selection
            # puts "Would you like to pick a movie? y/n"
        end

        def user_input
            gets.chomp 
        end

    def movie_title
        Studio_Ghibli.all.each_with_index do |film, index|
         puts "#{index + 1}. #{film.title}"
         #sleep 0.5
        end
    end    

    def print_movie_titles
        movie_title
    end

    #if user selects a movie title
    def test
        Studio_Ghibli.all.find do |film| 
             film.title = "Ponyo"
            puts film.title
        end
    end

    def selection
        puts "Would you like to pick another movie? y/n"
        input = user_input
        if input == "yes" || input == "y"
            print_movie_titles
        else
           puts "Goodbye"
        end
    end

    def pick_movie
        puts "Please select a number"
        input = gets.chomp.to_i 
    end

    def movie_list
        puts "Do you want to see the list of movies playing this week, Y/N?"
        input = user_input
        if input == "yes" || input == "y"
          print_movie_titles
        else
            puts "Goodbye"
        end
    end

    def movie_selection
        puts "Please select a number of the movie"
    end

    def list_selection
        index = gets.chomp.to_i - 1
        last_element = Studio_Ghibli.all.size - 1
        if index.between?(0,last_element) 
            movie = Studio_Ghibli.all[index]
            puts "Movie Title:" + " " + movie.title 
            puts "Release Date:" + " " + movie.release_date
            puts "Director:" + " " + movie.director
            puts "Description:" + " " + movie.description
        else
            puts "Please enter a valid number"
            list_selection
        end
    end
    

    # def goodbye
    #     puts "Goodbye!"
    # end

end
