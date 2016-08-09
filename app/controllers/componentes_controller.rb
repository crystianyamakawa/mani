class ComponentesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_componente,:set_listas, only: [:show, :edit, :update, :destroy]

  # GET /componentes
  def index
    filter = ["0=0"]
    if params.has_key?("componente")
      if !params[:tp_componente].blank?
        tp_componente = params[:tp_componente]
        filter << [" tipo = '#{tp_componente}'"]
      end
      if !params[:codigo_componente].blank?
        codigo_componente = params[:codigo_componente]
        filter << [ " codigo LIKE '%#{codigo_componente}%'"]
      end
      if !params[:nome_componente].blank?
        nome_componente = params[:nome_componente]
        filter << [ " descricao LIKE '%#{nome_componente}%'"]
      end
    end

    set_listas
    @componentes = Componente.where(filter.join(" And ")).order("descricao ASC").paginate(:page => params[:page], :per_page =>8 )

  end

  # GET /componentes/1
  def show
    @componente_caracteristicas =  @componente.caracteristicas.all
  end

  # GET /componentes/new
  def new
    @componente = Componente.new
    @componente.created_by = current_user.username
    @componente.updated_by = current_user.username
    set_listas
  end

  # GET /componentes/1/edit
  def edit
    @componente.updated_by = current_user.username
  end

  # POST /componentes
  def create
    @componente = Componente.new(componente_params)

    if @componente.save
      redirect_to @componente, notice: 'Componente criado com sucesso'
    else
      render :new
    end
  end

  # PATCH/PUT /componentes/1
  def update
    if @componente.update(componente_params)
      redirect_to @componente, notice: 'Componente atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /componentes/1
  def destroy
    @componente.destroy
    redirect_to componentes_url, notice: 'Componente eliminado com sucesso.'
  end
  def get_drop_down_options
    val = params[:category_id]
    #Use val to find records
    options = CategoriaProduto.all
    render :text => "{#{options.join(",")}}"
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente
      @componente = Componente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def componente_params
      params.require(:componente).permit(:codigo, :descricao, :tipo, :marca_id, :ds_modelo, :vl_aquisicao, :vl_venda, :vl_locacao, :unidade, :categoria_pai_id, :categoria_id, :estoque_id, :nr_patrimonio, :status, :created_by, :updated_by)
    end

    def set_listas
        @tp_componente = ListaValor.where("nm_lista = 'Tipo Componente'").order("valor ASC")
        @unidades   = ListaValor.where("nm_lista = 'Unidade Medida'").order("valor ASC")
        @marcas     = Marca.all
        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @subcategorias = CategoriaProduto.select('concat(categoria_pai.nome, "|", categoria_produtos.nome)  as nome, categoria_produtos.id as id').joins('JOIN categoria_produtos as categoria_pai ON categoria_pai.id = categoria_produtos.categoria_pai_id').order("categoria_pai.nome, categoria_produtos.nome ASC")
        @estoques   = Estoque.all
    end
end
