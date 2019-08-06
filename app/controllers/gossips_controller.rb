class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossips = Gossip.all
    @gossip = Gossip.new(user_id: 1, title: params[:gossip_title], content: params[:gossip_content])
    if @gossip.save
      render :index
    else
      render new_gossip_path
    end
  end

  def show
    @gossips = Gossip.all
    @comments = Comment.all
    @index = params[:id]
    if @index.is_a?(Integer)
    @likes = @gossips.find(@index).likes.count 

    @tags_array = []
    @gossips.find(@index).tags.map do |i|
      @tags_array << i.title
    end
    @tags_string = @tags_array.join(", ")
    end
  end

  def index
    @gossips = Gossip.all
    @gossip = Gossip.new
  end
end