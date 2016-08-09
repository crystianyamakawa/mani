class ProcessoVendasController < ApplicationController
  before_action :set_processo_venda, only: [:show, :edit, :update, :destroy]

  # GET /processo_vendas
  def index
    @processo_vendas = ProcessoVenda.all
  end

  # GET /processo_vendas/1
  def show
  end

  # GET /processo_vendas/new
  def new
    @processo_venda = ProcessoVenda.new
    @processo_venda.created_by = current_user.username
    @processo_venda.updated_by = current_user.username
    set_listas
    3.times do
      fase = @processo_venda.fases.build
      fase.created_by = current_user.username
      fase.updated_by = current_user.username
      3.times do
        etapa = fase.etapas.build
        etapa.created_by = current_user.username
        etapa.updated_by = current_user.username
        4.times do
          situacao = etapa.etapa_situacaos.build
          situacao.created_by = current_user.username
          situacao.updated_by = current_user.username
        end
      end
    end
  end

  # GET /processo_vendas/1/edit
  def edit
    set_listas
    @processo_venda.updated_by = current_user.username
    #fases = @processo_venda.fases
    #for fase in fases
    #  for etapa in fase.etapas
    #    4.times do
    #      situacao = etapa.etapa_situacaos.build
    #      situacao.created_by = current_user.username
    #      situacao.updated_by = current_user.username
    #    end
    #  end
    #end
  end

  # POST /processo_vendas
  def create
    @processo_venda = ProcessoVenda.new(processo_venda_params)

    if @processo_venda.save
      redirect_to @processo_venda, notice: 'Processo venda was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /processo_vendas/1
  def update
    if @processo_venda.update(processo_venda_params)
      redirect_to @processo_venda, notice: 'Processo venda was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /processo_vendas/1
  def destroy
    @processo_venda.destroy
    redirect_to processo_vendas_url, notice: 'Processo venda was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processo_venda
      @processo_venda = ProcessoVenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def processo_venda_params
      params.require(:processo_venda).permit(:nm_processo, :responsavel_id, :obs, :created_by, :updated_by,
                                             fases_attributes: [:id, :nm_fase, :processo_venda_id, :nr_sequencia, :responsavel_id,
                                                                :pc_processo, :obs, :created_by, :updated_by, :_destroy,
                                             etapas_attributes:[:id,:fase_id, :nm_etapa, :nr_sequencia, :responsavel_id, :obs,
                                                                :created_by, :updated_by, :_destroy,
                                             etapa_situacaos_attributes:[:id,:etapa_id, :nm_situacao, :created_by, :updated_by,:_destroy ]
                                                               ]
                                                               ]
                                             )
    end
    def set_listas
        @responsavel = User.order("first_name ASC")
    end
end
