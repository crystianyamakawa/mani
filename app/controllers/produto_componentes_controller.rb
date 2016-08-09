class ProdutoComponentesController < ApplicationController
        before_action :authenticate_user!
        before_action :set_produto_componente, only: [:show, :edit, :update, :destroy]

  # GET /produto_componentes
  def index
    @produto_componentes = ProdutoComponente.all
  end

  # GET /produto_componentes/1
  def show
  end

  # GET /produto_componentes/new
  def new
    @produto_componente = ProdutoComponente.new
  end

  # GET /produto_componentes/1/edit
  def edit
  end

  # POST /produto_componentes
  def create
    @produto_componente = ProdutoComponente.new(produto_componente_params)

    if @produto_componente.save
      redirect_to @produto_componente, notice: 'Produto componente was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /produto_componentes/1
  def update
    if @produto_componente.update(produto_componente_params)
      redirect_to @produto_componente, notice: 'Produto componente was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /produto_componentes/1
  def destroy
    @produto_componente.destroy
    redirect_to produto_componentes_url, notice: 'Produto componente was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_componente
      @produto_componente = ProdutoComponente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produto_componente_params
      params.require(:produto_componente).permit(:produto_pai_id, :produto_id, :quantidade, :vl_custo, :created_by, :updated_by)
    end
end
