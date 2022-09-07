class CatsController < ApplicationController
  def index
    @name = "Sam"
    render 'cats/index'
  end
end
