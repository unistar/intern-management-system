class HomeController < ApplicationController
  def index
    @users = User.all
    @employees = Employee.order("created_at DESC")
  end
end
