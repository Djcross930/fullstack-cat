class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render 'cats/index'
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render 'cats/show'
  end

  def new
    render 'cats/new'
  end

  def create
    cat = Cat.new
    cat.name = params[:name]
    cat.age = params[:age]
    cat.image_url = params[:image_url]
    cat.save
    redirect_to "/cats/" + cat.id.to_s
  end
end
