class OppProdutosController < ApplicationController
  before_action :set_opp_produto, only: [:show, :edit, :update, :destroy]

  # GET /opp_produtos
  def index
    @opp_produtos = OppProduto.all
  end

  # GET /opp_produtos/1
  def show
  end

  # GET /opp_produtos/new
  def new
    @opp_produto = OppProduto.new
  end

  # GET /opp_produtos/1/edit
  def edit
  end

  # POST /opp_produtos
  def create
    @opp_produto = OppProduto.new(opp_produto_params)

    if @opp_produto.save
      redirect_to @opp_produto, notice: 'Opp produto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /opp_produtos/1
  def update
    if @opp_produto.update(opp_produto_params)
      redirect_to @opp_produto, notice: 'Opp produto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /opp_produtos/1
  def destroy
    @opp_produto.destroy
    redirect_to opp_produtos_url, notice: 'Opp produto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp_produto
      @opp_produto = OppProduto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def opp_produto_params
      params.require(:opp_produto).permit(:oportunidade_id, :produto_id, :vl_negociado, :prazo_entrega, :dt_entrega, :obs, :created_by, :updated_by)
    end
end
