class OfertaController < ApplicationController
  before_action :set_ofertum, only: [:show, :edit, :update, :destroy]

  # GET /oferta
  def index
    @oferta = Ofertum.all
  end

  # GET /oferta/1
  def show
  end

  # GET /oferta/new
  def new
    @ofertum = Ofertum.new
  end

  # GET /oferta/1/edit
  def edit
  end

  # POST /oferta
  def create
    @ofertum = Ofertum.new(ofertum_params)

    if @ofertum.save
      redirect_to @ofertum, notice: 'Ofertum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /oferta/1
  def update
    if @ofertum.update(ofertum_params)
      redirect_to @ofertum, notice: 'Ofertum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /oferta/1
  def destroy
    @ofertum.destroy
    redirect_to oferta_url, notice: 'Ofertum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofertum
      @ofertum = Ofertum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ofertum_params
      params.require(:ofertum).permit(:nm_oferta, :campanha_id, :dt_inicio, :dt_termino, :vl_oferta, :vl_desconto, :pc_desconto, :obs, :created_by, :updated_by)
    end
end
