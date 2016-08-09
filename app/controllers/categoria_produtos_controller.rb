class CategoriaProdutosController < ApplicationController
        before_action :authenticate_user!
        before_action :set_categoria_produto,:setListas, only: [:show, :edit, :update, :destroy]

  # GET /categoria_produtos
  def index
    filter = ["0=0"]
    if params.has_key?("categoria_sup")
      if !params[:categoria_sup].blank?
        cat_sup = params[:categoria_sup]
        filter << [ "categoria_pais_categoria_produtos.nome =  '#{cat_sup}'"]
      end
      if !params[:categoria].blank?
        categoria = params[:categoria]
        filter << [ "nome LIKE  '%#{categoria}%'"]
      end
    end

    @categoria_produtos = CategoriaProduto.joins('LEFT OUTER JOIN categoria_produtos as categoria_pais_categoria_produtos ON categoria_pais_categoria_produtos.id = categoria_produtos.categoria_pai_id').where(filter.join(" And ")).order("categoria_pais_categoria_produtos.nome, categoria_produtos.nome ASC").paginate(:page => params[:page], :per_page =>8 )
    setListas
  end

  # GET /categoria_produtos/1
  def show
  end

  # GET /categoria_produtos/new
  def new
    @categoria_produto = CategoriaProduto.new
    @categoria_pai = CategoriaProduto.where(" categoria_pai_id is null ")
    @categoria_produto.created_by = current_user.username
    @categoria_produto.updated_by = current_user.username
  end

  # GET /categoria_produtos/1/edit
  def edit
    @categoria_produto.updated_by = current_user.username
    setListas
  end

  # POST /categoria_produtos
  def create
    @categoria_produto = CategoriaProduto.new(categoria_produto_params)

    if @categoria_produto.save
      redirect_to @categoria_produto, notice: 'Categoria produto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /categoria_produtos/1
  def update
    if @categoria_produto.update(categoria_produto_params)
      redirect_to @categoria_produto, notice: 'Categoria produto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /categoria_produtos/1
  def destroy
    @categoria_produto.destroy
    redirect_to categoria_produtos_url, notice: 'Categoria produto was successfully destroyed.'
  end

  def subcategorias
    puts "Função subcategorias"
    cat = CategoriaProduto.all
    puts "Busca Categorias"
    respond_to do |format|
      format.json { render :json => cat }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_produto
      @categoria_produto = CategoriaProduto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def categoria_produto_params
      params.require(:categoria_produto).permit(:nome, :categoria_pai_id, :created_by, :updated_by)
    end

    def setListas
      @categoria_sup = CategoriaProduto.where(" categoria_pai_id is null ")
      #do |cat|
      #  @categoria_sup << cat.nome
      #end
    end
end
