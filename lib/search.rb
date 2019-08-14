# frozen_string_literal: true

require 'rest-client'
require 'nokogiri'
require_relative './display_module'

class SearchProviders
  def self.bing(keyword)
    res =  RestClient.get 'https://bing.com/search/', params: { q: keyword }
    tags = Nokogiri::HTML.parse(res).xpath('//li[@class="b_algo"] //h2 //a')
    tags.each do |tag|
      Display.tags tag
    end
  end

  def self.gems(keyword)
    res = RestClient.get "https://rubygems.org/search?utf8=%E2%9C%93&query=#{keyword}"
    tags = Nokogiri::HTML.parse(res).xpath('//a[@class="gems__gem"]')
    tags.each do |tag|
      Display.tags tag
    end
  end

  def self.so(keyword)
    Display.before_result
    res = RestClient.get "https://stackoverflow.com/search?q=#{keyword}"
    tags = Nokogiri::HTML.parse(res).xpath('//a[@class="question-hyperlink"]')
    tags.each do |tag|
      Display.tags tag
    end
    Display.after_result
  end

  def self.help(_noarg = nil)
    Display.help!
  end
end
