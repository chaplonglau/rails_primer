class CorgisController < ApplicationController
  def index
    @corgis=Corgi.all
  end

  def show
    @corgi=Corgi.find(params[:id])
  end

  def new
    @corgi=Corgi.new
  end

  def edit
    @corgi=Corgi.find(params[:id])
  end

  def create
    @corgi=Corgi.new(corgi_params)
    if @corgi.save
      redirect_to @corgi
    else
      render 'new'
    end
  end

  def update
    @corgi=Corgi.find(params[:id])
    if @corgi.update(corgi_params)
      redirect_to @corgi
    else
      render 'edit'
    end
  end

  def destroy
    @corgi=Corgi.find(params[:id])
    @corgi.destroy
    redirect_to corgis_path
  end

  private
    def corgi_params
      params.require(:corgi).permit(:name, :color)
    end
end

