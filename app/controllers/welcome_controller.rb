class WelcomeController < ApplicationController
  def index
    flash[:notice] = "欢迎来到空岛"
  end
end
