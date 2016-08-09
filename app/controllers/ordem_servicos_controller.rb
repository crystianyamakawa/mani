class OrdemServicosController < ApplicationController
  before_action :set_ordem_servico, only: [:show, :edit, :update, :destroy]

  # GET /ordem_servicos
  def index
    @ordem_servicos = OrdemServico.all
  end

  # GET /ordem_servicos/1
  def show
    @ordem_servico_itens = @ordem_servico.itens
  end

  # GET /ordem_servicos/new
  def new
    @ordem_servico = OrdemServico.new
    @ordem_servico.created_by = current_user.username
    @ordem_servico.updated_by = current_user.username
    set_listas
  end

  # GET /ordem_servicos/1/edit
  def edit
    @ordem_servico_itens = @ordem_servico.itens
    @ordem_servico.updated_by = current_user.username
    set_listas
  end

  # POST /ordem_servicos
  def create
    @ordem_servico = OrdemServico.new(ordem_servico_params)
    @ordem_servico.created_by = current_user.username
    @ordem_servico.updated_by = current_user.username

    if @ordem_servico.save
      redirect_to @ordem_servico, notice: 'Ordem Servico criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /ordem_servicos/1
  def update
    if @ordem_servico.update(ordem_servico_params)
      redirect_to @ordem_servico, notice: 'Ordem Servico atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /ordem_servicos/1
  def destroy
    @ordem_servico.destroy
    redirect_to ordem_servicos_url, notice: 'Ordem Servico eliminada com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_servico
      @ordem_servico = OrdemServico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ordem_servico_params
      params.require(:ordem_servico).permit(:nr_protocolo, :nm_contato, :tp_retorno,
      :ds_retorno, :cliente_id, :atendimento_id, :status, :responsavel,
       :equipamento_id, :rua, :nr_endereco, :bairro, :cidade, :cep, :uf, :lat, :long,
       :dt_fechamento, :obs, :created_by, :updated_by)
    end
    def set_listas

        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @clientes   = Cliente.order("nome ASC")
        @status     = ['ABERTO','AVALIAÇÃO TECNICA','AGUARDANDO APROVAÇÃO', 'AGUARDANDO FORNECEDOR','AGUARDANDO PEÇAS', 'CANCELADO', 'FECHADO']
        @tp_retorno = ['TELEFONE', 'EMAIL', 'WHATS UP']
        @UFs = ["AC","AL","AM","AP","BA","CE","DF","ES","GO","MA","MG","MS","MT","PA","PB","PE",
              "PI","PR","RJ","RN","RO","RR","RS","SC","SE","SP","TO"]
        @funcionarios = User.select("concat(first_name,' ', last_name) nome").order("first_name, last_name ASC")
    end
end
