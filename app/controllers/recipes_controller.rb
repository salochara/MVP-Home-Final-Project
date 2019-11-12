class RecipesController < ApplicationController
require 'open-uri'
require 'nokogiri'

def scrapeing_recipe
  @match = Match.first
  cuisine = 'israeli'
  url = "https://food52.com/recipes/#{cuisine}"
  base_url = "https://food52.com"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.collectable-tile .photo-block a').take(3).each do |element|
    @url = base_url + element.attribute('href')
    @image_url = element.first_element_child.attribute('src')
    @name = element.attribute('title')
    @recipe = Recipe.create!(match_id: @match.id, name: @name, url: @url, image_url: @image_url)
  end
end

def index
  Recipe.destroy_all
  scrapeing_recipe
  @recipes = policy_scope(Recipe)
  # authorize @recipes
end

end




