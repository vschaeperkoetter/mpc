class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @kittens = Kitten.all
    respond_with(@kittens)
  end

  def show
    respond_with(@kitten)
  end

  def new
    @kitten = Kitten.new
    respond_with(@kitten)
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    @kitten.save
    respond_with(@kitten)
  end

  def update
    @kitten.update(kitten_params)
    respond_with(@kitten)
  end

  def destroy
    @kitten.destroy
    respond_with(@kitten)
  end

  private
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    def kitten_params
      params.require(:kitten).permit(:url, :wins)
    end
end
