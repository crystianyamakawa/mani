class EtapasController < ApplicationController
  before_action :set_etapa, only: [:show, :edit, :update, :destroy]

  # GET /etapas
  def index
    @etapas = Etapa.all
  end

  # GET /etapas/1
  def show
  end

  # GET /etapas/new
  def new
    @etapa = Etapa.new
  end

  # GET /etapas/1/edit
  def edit
  end

  # POST /etapas
  def create
    @etapa = Etapa.new(etapa_params)

    if @etapa.save
      redirect_to @etapa, notice: 'Etapa was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /etapas/1
  def update
    if @etapa.update(etapa_params)
      redirect_to @etapa, notice: 'Etapa was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /etapas/1
  def destroy
    @etapa.destroy
    redirect_to etapas_url, notice: 'Etapa was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etapa
      @etapa = Etapa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def etapa_params
      params.require(:etapa).permit(:fase_id, :nm_etapa, :nr_sequencia, :responsavel_id, :obs, :created_by, :updated_by)
    end
end
