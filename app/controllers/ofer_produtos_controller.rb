class OferProdutosController < ApplicationController
  before_action :set_ofer_produto, only: [:show, :edit, :update, :destroy]

  # GET /ofer_produtos
  def index
    @ofer_produtos = OferProduto.all
  end

  # GET /ofer_produtos/1
  def show
  end

  # GET /ofer_produtos/new
  def new
    @ofer_produto = OferProduto.new
  end

  # GET /ofer_produtos/1/edit
  def edit
  end

  # POST /ofer_produtos
  def create
    @ofer_produto = OferProduto.new(ofer_produto_params)

    if @ofer_produto.save
      redirect_to @ofer_produto, notice: 'Ofer produto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ofer_produtos/1
  def update
    if @ofer_produto.update(ofer_produto_params)
      redirect_to @ofer_produto, notice: 'Ofer produto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ofer_produtos/1
  def destroy
    @ofer_produto.destroy
    redirect_to ofer_produtos_url, notice: 'Ofer produto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofer_produto
      @ofer_produto = OferProduto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ofer_produto_params
      params.require(:ofer_produto).permit(:oferta_id, :produto_id, :vl_oferta, :obs, :created_by, :updated_by)
    end
end
