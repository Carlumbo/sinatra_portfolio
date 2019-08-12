[{text = "The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont and starring Tim Robbins and Morgan Freeman. Adapted from the Stephen King novella Rita Hayworth and Shawshank Redemption, the film tells the story of Andy Dufresne, a banker who is sentenced to life in Shawshank State Prison despite his claims of being wrongly accused. During his time at the prison, he befriends a fellow inmate, Ellis Boyd Redding, and finds himself protected by the guards after the warden begins using him in his money endeavor. "

def num_parser(movie_year)
  puts "#{movie_year.gsub(/[^0-9]/, '')}"

end 

num_parser(text)