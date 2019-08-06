class UserController < ApplicationController
  def show
    @users = User.all
    @index = params[:id]
  end
end
