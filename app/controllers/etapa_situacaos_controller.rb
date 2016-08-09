class EtapaSituacaosController < ApplicationController
  before_action :set_etapa_situacao, only: [:show, :edit, :update, :destroy]

  # GET /etapa_situacaos
  def index
    @etapa_situacaos = EtapaSituacao.all
  end

  # GET /etapa_situacaos/1
  def show
  end

  # GET /etapa_situacaos/new
  def new
    @etapa_situacao = EtapaSituacao.new
  end

  # GET /etapa_situacaos/1/edit
  def edit
  end

  # POST /etapa_situacaos
  def create
    @etapa_situacao = EtapaSituacao.new(etapa_situacao_params)

    if @etapa_situacao.save
      redirect_to @etapa_situacao, notice: 'Etapa situacao was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /etapa_situacaos/1
  def update
    if @etapa_situacao.update(etapa_situacao_params)
      redirect_to @etapa_situacao, notice: 'Etapa situacao was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /etapa_situacaos/1
  def destroy
    @etapa_situacao.destroy
    redirect_to etapa_situacaos_url, notice: 'Etapa situacao was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etapa_situacao
      @etapa_situacao = EtapaSituacao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def etapa_situacao_params
      params.require(:etapa_situacao).permit(:etapa_id, :nm_situacao, :created_by, :updated_by)
    end
end
