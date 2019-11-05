class DestinationsController < ApplicationController
  before_action :find_one, only: [:show, :edit, :delete, :create]

  def index
    @destination = Destination.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def find_one
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require().permit()
  end
end
