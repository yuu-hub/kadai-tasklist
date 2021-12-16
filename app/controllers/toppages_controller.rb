class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.task.build  # form_with 用
      @tasks = current_user.tasks.order(id: :desc)
    end
  end
end
