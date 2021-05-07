  
require "http"
puts "Enter the id of the movie you'd like to see"
id = gets.chomp.to_i
 

response = HTTP.get("http://localhost:3000/all_movie_path?id=#{id}")


p response.parse
  # define = response.parse
  # puts "Definition of #{word}: #{define[0]["text"]}"

  # response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

  # define = response.parse
  # puts "Here's a sentence for context of #{word}: #{define["text"]}" 

  # response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

  # define = response.parse
  # puts "This is how you pronounce #{word}: #{define[0]['raw']}"

  # response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/audio?useCanonical=false&limit=50&api_key=22bf12vddbpizrmyfs90cf695e9j4u1seq52o4klisqmqn6v2")
  
  # file_url = response.parse[0]["fileUrl"]
  # system("open", file_url)

  # puts "Enter q to quit or any other key to continue"
  # user_input = gets.chomp
  # if user_input == "q"
  #   puts "Thank you, goodbye!"
  #   break
  # end

