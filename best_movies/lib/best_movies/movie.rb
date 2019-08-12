class BestMovies::Movie 
  attr_accessor :title , :ranks , :actors, :descriptions , :urls
  
  def self.alltime 
  #scrape ranker and then return things based on that DATA

  self.scrape_movies
  end 
  
def self.scrape_movies
     movies = {}
    movies = self.scrape_ranker
    movies
  end 
  

    
  def self.scrape_ranker 
    doc = Nokogiri::HTML(open('https://www.ranker.com/crowdranked-list/the-best-movies-of-all-time'))
    
   movie_names = doc.search("div.listItem__data a").text
    title2 = movie_names.gsub(/"* ...more/, "!!")
    title = title2.gsub(/"*Casablanca/, "!!Casablanca").split("!!")
 
    ranks = []
    doc.search("strong.listItem__rank.block.center.instapaper_ignore").each do |rank|
      ranks << rank.text
    end 
    
    descriptions = []
    doc.search("div.listItem__data div.listItem__blather.grey.default span").each do |description|
      descriptions << description.text
    end   
    
    url = []
    doc.search("div.listItem__data div.listItem__blather.grey.default span.listItem__wiki.block.default.grey a").each do |anchor|
    url << anchor.attr('href')
     # movie_page = Nokogiri::HTML(open("#{info_url}"))
    end 
    binding.pry
      leading_actors = []
    doc.search("div.listItem__data span.listItem__props.block span.listItem__properties.black.default").each do |actor|
      leading_actors << actor.text
      
      end 
      
    movie_info = {titles: title, rank_spot: ranks, synopsis: descriptions , actors: leading_actors, urls: url}
  end 
end 

