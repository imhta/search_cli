# frozen_string_literal: true

# diplay module for displaying messages in cli
module Display
  def self.before_result
    puts 'Your results are..'
  end

  def self.after_result
    puts 'Thank you for using search_cli'
  end

  def self.help!
    puts 'help'
    puts 'search format: search-provider keyword/query'
    puts 'search-provider'
    puts 'bing -> bing search'
    puts 'gems -> rubygems search'
    puts 'so   -> stackoverflow search'
  end

  def self.tags(tag)
    puts '-----------------------------------------'
    puts
    puts tag.text.to_s
    puts (tag[:href]).to_s
    puts
  end
end
