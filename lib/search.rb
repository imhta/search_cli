require 'rest-client'
require 'nokogiri'



res_google= RestClient.get "https://google.com/search/", {params: {q: "SEO"}}
def bing(string)
    res =  RestClient.get "https://bing.com/search/", {params: {q: string}}
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
end

def google(string)
    res_google= RestClient.get "https://google.com/search/", {params: {q: string}}
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
end

string=gets.chomp
bing(string)
# tags.each do |tag|
#     if !tag[:href].nil? && tag[:href].start_with?("https://") && tag[:href].length < 100
#         puts "-----------------------------------------"
#         puts 
#         puts "#{tag.text}"
#         puts "#{tag[:href]}"
#         puts
#     end
# end