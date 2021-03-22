class UsersController < ApplicationController

  def show
    @username = current_user.username
    @tasks = current_user.tasks
  end
end
