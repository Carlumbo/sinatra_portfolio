  
 
require 'nokogiri'
require 'open-uri'
require 'pry'

def movie_ranker_scraper
  html = "https://www.ranker.com/crowdranked-list/the-best-movies-of-all-time"
 doc = Nokogiri::HTML(html)
  movies = []
  doc.css("div.listItem.listItem__h2.listItem__h2--grid.-nvscdSdow__r2--zyzEz.pointer.listItem__h2--buyButton.flex.relative.robotoC").each do |movie|
    binding.pry
    title = movie.css("div.listItem__data a").text
    movies << title
  
  end
  movies
end

movie_ranker_scraper
