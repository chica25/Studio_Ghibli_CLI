class Cli

    def run
        puts "WELCOME TO STUDIO GHIBLI FILMS!".colorize(:blue)
        sleep(1)
        Api.get_movies
        movie_list
        movie_selection
        list_selection
        selection
    end
    
    def print_all
        Studio_Ghibli.all.each.with_index(1) do |ghibli, index|
            puts "#{index}. #{ghibli.title}"
        end
    end

    def user_input
        gets.chomp.downcase
    end

    def movie_title
        Studio_Ghibli.all.each.with_index(1) do |film, index|
         puts "#{index}. #{film.title}"
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
             index = user_input.to_i - 1
            last_element = Studio_Ghibli.all.size - 1
         if index.between?(0,last_element) 
            system "clear"
            movie = Studio_Ghibli.all[index]
            puts "Movie Title: #{movie.title}"
            puts "Release Date: #{movie.release_date}"
            puts "Director: #{movie.director}"
            puts "Description: #{movie.description}"
        else
            puts "Please enter a valid number:"
            list_selection
        end
    end
    
    def selection
            puts "\n\nWould you like to pick another movie? y/n"
            input = user_input
        if input == "yes" || input == "y"
            print_movie_titles
            list_selection
            selection
        else 
           puts "Goodbye"
        end
    end
end


 