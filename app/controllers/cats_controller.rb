class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render 'cats/index'
  end
end
