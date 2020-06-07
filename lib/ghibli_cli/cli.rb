#--- Notes
#Introduce user with a welcome
#Display movie list - Iterate with index 
# Give the user a movie selection - if/else
# Give the user another selection once they select the title - release_date, description director 

class Cli

    #1 welcome the user
    def run
        puts "WELCOME TO STUDIO GHIBLI FILMS!"
        sleep(1)
        Api.get_movies
        movie_list
        movie_selection
        list_selection
        selection
    end

    def user_input
        gets.chomp.downcase
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

    def movie_list
           puts "Would you like to see the list of movies playing this week? y/n"
           input = user_input
        if input == "yes" || input == "y"
           print_movie_titles
        else
           puts "Goodbye"
        end
    end

    def pick_movie
        puts "Please select a number:"
        input = gets.chomp.to_i 
    end


    def movie_selection
        puts "Please select a movie number:"
    end

    def list_selection
            index = gets.chomp.to_i - 1
            last_element = Studio_Ghibli.all.size - 1
            # if index.between?(0..-1) 
        if index.between?(0,last_element) 
            movie = Studio_Ghibli.all[index]
            puts "Movie Title:" + " " << movie.title 
            puts "Release Date:" + " " << movie.release_date
            puts "Director:" + " " << movie.director
            puts "Description:" + " " << movie.description
        else
            puts "Please enter a valid number:"
            list_selection
        end
    end
    
    def selection
            puts "Would you like to pick another movie? y/n"
            input = user_input
        if input == "yes" || input == "y"
            print_movie_titles
            list_selection
            selection
        #elsif input == "n" || input == "no"
        else 
           puts "Goodbye"
        end
    end

end

#notes - need to delete the n after the user enters "n"
# need to fix the upcase if the user enters a capital Y or N
# selection method - elsif 