class UsersController < ApplicationController
  def show
    @users = User.all
    @index = params[:id]
    
  end
  
  def new
    @user = User.new
  end

  # def create
  #   @users = User.all
  #   @user = User.new(user_id: 1, title: params[:gossip_title], content: params[:gossip_content])
  #   if @user.save
  #     render :index
  #   else
  #     render new_user_path
  #   end
  # end

  def index
    @users = User.all
    @user = User.new
  end

end
