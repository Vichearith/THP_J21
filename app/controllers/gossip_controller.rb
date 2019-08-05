class GossipController < ApplicationController
  def display
    @gossips = Gossip.all
    @comments = Comment.all
    @index = params[:index]
  end
end
