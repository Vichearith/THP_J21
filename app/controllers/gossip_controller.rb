class GossipController < ApplicationController
  def display
    @gossips = Gossip.all
    @comments = Comment.all
    @index = params[:index]
    @likes = @gossips.find(@index).likes.count 

    @tags_array = []
    @gossips.find(@index).tags.map do |i|
      @tags_array << i.title
    end
    @tags_string = @tags_array.join(", ")
  end
end