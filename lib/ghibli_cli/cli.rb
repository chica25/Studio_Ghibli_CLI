class Cli
        def run
        puts "Welcome to Ghibli films!"
        Api.get_movies
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