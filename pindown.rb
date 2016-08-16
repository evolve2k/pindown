require 'nokogiri'
require 'open-uri'

# Replace this url with your desired url
PAGE_URL = "https://au.pinterest.com/example/inspiration"

page = Nokogiri::HTML(open(PAGE_URL))
links = page.css("img.pinImg")
links.each do |link|
  `wget #{link['src']}`
end
