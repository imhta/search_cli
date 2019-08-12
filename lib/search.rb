require 'rest-client'
require 'nokogiri'



res =  RestClient.get "https://bing.com/search/", {params: {q: 'hello world'}}
tags = Nokogiri::HTML.parse(res).xpath("//a")
tags.each do |tag|
    if !tag[:href].nil? && tag[:href].start_with?("https://") && tag[:href].length < 100
        puts "-----------------------------------------"
        puts 
        puts "#{tag.text}"
        puts "#{tag[:href]}"
        puts
    end
end