# frozen_string_literal: true

module Github
  def gh_repo(keyword)
    Display.before_result
    res = RestClient.get "https://github.com/search?q=#{keyword}"
    tags = Nokogiri::HTML.parse(res).xpath('//li[@class="repo-list-item"]')
    tags.each do |tag|
      # if tag[:href].start_with?('/')
      #   tag[:href] = 'https://stackoverflow.com' + tag[:href]
      # end
      Display.tags tag
    end
    Display.after_result
  end
end
