class UserController < ApplicationController
  def display
    @users = User.all
    @index = params[:index]
  end
end
