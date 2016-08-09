class OrdemServicoItensController < ApplicationController
  before_action :set_ordem_servico_iten, only: [:show, :edit, :update, :destroy]

  # GET /ordem_servico_itens
  def index
    @ordem_servico_itens = OrdemServicoIten.all
  end

  # GET /ordem_servico_itens/1
  def show
  end

  # GET /ordem_servico_itens/new
  def new
    @ordem_servico_iten = OrdemServicoIten.new
    @ordem_servico_iten.created_by = current_user.username
    @ordem_servico_iten.updated_by = current_user.username
    set_listas
  end

  # GET /ordem_servico_itens/1/edit
  def edit
    @ordem_servico_iten.updated_by = current_user.username
    set_listas
  end

  # POST /ordem_servico_itens
  def create
    @ordem_servico_iten = OrdemServicoIten.new(ordem_servico_iten_params)

    if @ordem_servico_iten.save
      redirect_to @ordem_servico_iten, notice: 'Ordem servico iten was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ordem_servico_itens/1
  def update
    if @ordem_servico_iten.update(ordem_servico_iten_params)
      redirect_to @ordem_servico_iten, notice: 'Ordem servico iten was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ordem_servico_itens/1
  def destroy
    @ordem_servico_iten.destroy
    redirect_to ordem_servico_itens_url, notice: 'Ordem servico iten was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_servico_iten
      @ordem_servico_iten = OrdemServicoIten.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ordem_servico_iten_params
      params.require(:ordem_servico_iten).permit(:ordem_servico_id, :servico_id, :fornecedor_id, :status, :obs, :created_by, :updated_by)
    end
    def set_listas

        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @fornecedores = Cliente.where("fg_fornecedor = 1").order("nome ASC")
        @servicos = Servico.order("descricao ASC")
        @status     = ['ABERTO', 'AGUARDANDO FORNECEDOR','AGUARDANDO PEÇAS', 'CANCELADO', 'FECHADO']
    end
end
