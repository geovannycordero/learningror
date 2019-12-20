class PortafoliosController < ApplicationController
  def index
    @portafolio_items = Portafolio.all
  end

  def new
    @portafolio_item = Portafolio.new
  end

  def create
    @portafolio_item = Portafolio.new(portafolio_params)

    respond_to do |format|
      if @portafolio_item.save
        format.html { redirect_to portafolios_path, notice: 'Portafolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portafolio_item = Portafolio.find(params[:id])
  end

  def update
    @portafolio_item = Portafolio.find(params[:id])

    respond_to do |format|
      if @portafolio_item.update(portafolio_params)
        format.html { redirect_to portafolios_path, notice: 'Portafolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portafolio_item = Portafolio.find(params[:id])
  end

  def destroy
    @portafolio_item = Portafolio.find(params[:id])

    @portafolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portafolios_url, notice: 'Portafolio was successfully destroyed.' }
    end
  end

  private
    def portafolio_params
      params.require(:portafolio).permit(:title, :subtitle, :body)
    end
end
