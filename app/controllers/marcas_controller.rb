class MarcasController < ApplicationController
        before_action :authenticate_user!
        before_action :set_marca, only: [:show, :edit, :update, :destroy]

  # GET /marcas
  def index
    filter = ["0=0"]
    if params.has_key?("nome")
      if !params[:nome].blank?
        nome = params[:nome]
        filter << [ " nome LIKE '%#{nome}%'"]
      end
    end
    @marcas = Marca.where(filter.join(" And ")).order("nome ASC").paginate(:page => params[:page], :per_page =>8 )

  end


  # GET /marcas/1
  def show
  end

  # GET /marcas/new
  def new
    @marca = Marca.new
    @marca.created_by = current_user.username
    @marca.updated_by = current_user.username
  end

  # GET /marcas/1/edit
  def edit
    @marca.updated_by = current_user.username
  end

  # POST /marcas
  def create
    @marca = Marca.new(marca_params)

    if @marca.save
      redirect_to @marca, notice: 'Marca criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /marcas/1
  def update
    if @marca.update(marca_params)
      redirect_to @marca, notice: 'Marca atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /marcas/1
  def destroy
    @marca.destroy
    redirect_to marcas_url, notice: 'Marca eliminada com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marca_params
      params.require(:marca).permit(:nome, :created_by, :updated_by)
    end
end
