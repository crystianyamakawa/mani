class EstoquesController < ApplicationController
        before_action :authenticate_user!
        before_action :set_estoque, :set_listas,only: [:show, :edit, :update, :destroy]

  # GET /estoques
  def index
    @estoques = Estoque.all

  end

  # GET /estoques/1
  def show
  end

  # GET /estoques/new
  def new
    @estoque = Estoque.new
    @estoque.created_by = current_user.username
    @estoque.updated_by = current_user.username
    set_listas
  end

  # GET /estoques/1/edit
  def edit
    @estoque.updated_by = current_user.username
    set_listas
  end

  # POST /estoques
  def create
    @estoque = Estoque.new(estoque_params)

    if @estoque.save
      redirect_to @estoque, notice: 'Estoque criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /estoques/1
  def update
    if @estoque.update(estoque_params)
      redirect_to @estoque, notice: 'Estoque atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /estoques/1
  def destroy
    @estoque.destroy
    redirect_to estoques_url, notice: 'Estoque eliminado com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque
      @estoque = Estoque.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estoque_params
      params.require(:estoque).permit(:nome, :tipo, :created_by, :updated_by)
    end
    def set_listas
        @tp_estoque = ListaValor.where("nm_lista = 'Tipo Estoque'").order("valor ASC")
    end
end
