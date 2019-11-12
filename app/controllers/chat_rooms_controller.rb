class ChatRoomsController < ApplicationController
  layout "registration", only: [:show]
  require 'open-uri'
  require 'nokogiri'
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    # Recipe.destroy_all
    scrapeing_recipe
    @recipes = policy_scope(Recipe)
  end

  def index
    @my_chats = []
    ChatRoom.all.each do |chat|
      if chat.match.user1 == current_user || chat.match.user2 == current_user
        @my_chats << chat
      end
    end
  end

  private
  def scrapeing_recipe
    @match = @chat_room.match
    match_array = @chat_room.match.user1.cuisine_list & @chat_room.match.user2.cuisine_list
    if match_array.empty?
      cuisine = "indonesian"
    else
      cuisine = match_array.first.downcase
    end
    url = "https://food52.com/recipes/#{cuisine}"
    base_url = "https://food52.com"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.collectable-tile .photo-block a').take(1).each do |element|
      @url = base_url + element.attribute('href')
      @image_url = element.first_element_child.attribute('src')
      @name = element.attribute('title')
      @recipe = Recipe.create!(match_id: @match.id, name: @name, url: @url, image_url: @image_url)
    end
  end

end
