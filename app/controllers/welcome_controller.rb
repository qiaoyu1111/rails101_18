class WelcomeController < ApplicationController
  def index
    flash[:notice] = "早安！你好！哈哈！😄"
  end
end
