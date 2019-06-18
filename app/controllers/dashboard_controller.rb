class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show

  end

  def welcome
  end
end
