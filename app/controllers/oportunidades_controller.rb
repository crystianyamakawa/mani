class OportunidadesController < ApplicationController
  before_action :set_oportunidade, only: [:show, :edit, :update, :destroy]

  # GET /oportunidades
  def index
    @oportunidades = Oportunidade.all
  end

  # GET /oportunidades/1
  def show
  end

  # GET /oportunidades/new
  def new
    @oportunidade = Oportunidade.new
    @oportunidade.created_by = current_user.username
    @oportunidade.updated_by = current_user.username
    set_listas
  end

  # GET /oportunidades/1/edit
  def edit
    @oportunidade.updated_by = current_user.username
    set_listas
  end

  # POST /oportunidades
  def create
    @oportunidade = Oportunidade.new(oportunidade_params)

    if @oportunidade.save
      redirect_to @oportunidade, notice: 'Oportunidade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /oportunidades/1
  def update
    if @oportunidade.update(oportunidade_params)
      redirect_to @oportunidade, notice: 'Oportunidade was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /oportunidades/1
  def destroy
    @oportunidade.destroy
    redirect_to oportunidades_url, notice: 'Oportunidade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oportunidade
      @oportunidade = Oportunidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def oportunidade_params
      params.require(:oportunidade).permit(:nm_contato, :tp_retorno, :ds_retorno, :cliente_id, :processo_venda_id, :campanha_id, :oferta_id, :fase_id, :etapa_id, :etapa_situacao_id, :status, :resultado, :motivo_resultado_id, :pc_evolucao, :pc_sucesso, :responsavel_id, :obs, :created_by, :updated_by)
    end

    def set_listas
        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @clientes   = Cliente.order("nome ASC")
        @processo_venda = ProcessoVenda.order("nm_processo ASC")
        @oferta = Oferta.all
        @fase = Fase.all
        @etapa = Etapa.all
        @situacao = EtapaSituacao.all

        @status     = ['ABERTO', 'EM PROCESSO', 'CANCELADO', 'FECHADO']
        @tp_retorno = ['TELEFONE', 'EMAIL', 'WHATS UP']
        @UFs = ["AC","AL","AM","AP","BA","CE","DF","ES","GO","MA","MG","MS","MT","PA","PB","PE",
              "PI","PR","RJ","RN","RO","RR","RS","SC","SE","SP","TO"]
    end
end
