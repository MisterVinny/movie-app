require 'http'

response = HTTP.get("http://localhost:3000/all_movies")
movies = response.parse

#clean-prints the movies
movies.each do |movie|
  puts "The movie, #{movie["title"]}, was released in #{movie["year"]}"
  puts "PLOT:"
  puts "#{movie["plot"]}"
  puts
end


response = HTTP.get("http://localhost:3000/movies_after_2017")
movies_after_2017 = response.parse

puts "The movies after 2017 are:"
movies_after_2017.each do |movie|
  puts movie["title"]
end