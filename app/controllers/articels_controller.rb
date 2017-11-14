class ArticelsController < ApplicationController
before_action :set_articel, only: [:show, :edit, :update, :destroy]

  def index
    @articels = Articel.all
  end

  def show
  end

  def new
    @articel = Articel.new
  end

  def create
    @articel = Articel.new(articel_params)
    @articel.save

    redirect_to @articel
  end

  def edit
  end

  def update
    @articel.update(articel_params)

    redirect_to @articel
  end

  def destroy
    @articel.destroy
    redirect_to articels_path
  end

  def articel_params
    params.require(:articel).permit(:title, :content)
  end

  def set_articel
    @articel = Articel.find(params[:id])
  end
end
