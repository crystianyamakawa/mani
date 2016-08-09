class ProdutosController < ApplicationController
          before_action :authenticate_user!
          before_action :set_produto, :set_listas,only: [:show, :edit, :update, :destroy]

  # GET /produtos
  def index
    filter = ["0=0"]
    if params.has_key?("lista_valor")
      if !params[:tp_produto].blank?
        tp_produto = params[:tp_produto]
        filter << [" tipo = '#{tp_produto}'"]
      end
      if !params[:codigo_produto].blank?
        codigo_produto = params[:codigo_produto]
        filter << [ " codigo LIKE '%#{codigo_produto}%'"]
      end
      if !params[:nome_produto].blank?
        nome_produto = params[:nome_produto]
        filter << [ " descricao LIKE '%#{nome_produto}%'"]
      end
    end

    set_listas
    @produtos = Produto.where(filter.join(" And ")).order("descricao ASC").paginate(:page => params[:page], :per_page =>8 )

  end

  # GET /produtos/1
  def show
    @produtosKit = ProdutoComponente.all
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
    @produto.created_by = current_user.username
    @produto.updated_by = current_user.username
    set_listas
  end

  # GET /produtos/1/edit
  def edit
    @produto.updated_by = current_user.username
  end

  # POST /produtos
  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      redirect_to @produto, notice: 'Produto criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /produtos/1
  def update
    @produto.updated_by = current_user.username
    if @produto.update(produto_params)
      redirect_to @produto, notice: 'Produto atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /produtos/1
  def destroy
    @produto.destroy
    redirect_to produtos_url, notice: 'Produto eliminado com sucesso.'
  end

  def get_drop_down_options
    val = params[:category_id]
    #Use val to find records
    options = CategoriaProduto.all
    render :text => "{#{options.join(",")}}"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produto_params
      params.require(:produto).permit(:tipo, :codigo, :descricao, :marca_id, :modelo, :vl_custo, :vl_venda, :unidade, :categoria_pai_id, :categoria_id, :estoque_id, :ean, :ncm, :created_by, :updated_by)
    end

    def set_listas
        @tp_produto = ListaValor.where("nm_lista = 'Tipo Produto'").order("valor ASC")
        @unidades   = ListaValor.where("nm_lista = 'Unidade Medida'").order("valor ASC")
        @marcas     = Marca.all
        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @subcategorias = CategoriaProduto.select('concat(categoria_pai.nome, "|", categoria_produtos.nome)  as nome, categoria_produtos.id as id').joins('JOIN categoria_produtos as categoria_pai ON categoria_pai.id = categoria_produtos.categoria_pai_id').order("categoria_pai.nome, categoria_produtos.nome ASC")
        @estoques   = Estoque.all
    end
end
