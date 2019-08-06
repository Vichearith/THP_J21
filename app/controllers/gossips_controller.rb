class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossips = Gossip.all
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      render :index
    else
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to index
  end

  def update
    @gossips = Gossip.all
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def show
    @index = params[:id]
    @gossips = Gossip.all
    @gossip = Gossip.all.find(@index)
    @comments = Comment.all
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

  private

  def gossip_params
    params.require(:gossip).permit(:user_id, :title, :content)
  end

end