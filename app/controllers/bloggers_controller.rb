class BloggersController < ApplicationController
  before_action :find_one, only: [:show, :edit, :update, :delete]

  def index
    @bloggers = Blogger.all
  end

  def show
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new(blogger_params)
    if @blogger.valid?
      @blogger.save
      redirect_to bloggers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def find_one
    @blogger = Blogger.find(params[:id])
  end

  def blogger_params
    params.require(:blogger).permit(:name, :age, :bio)
  end
end
