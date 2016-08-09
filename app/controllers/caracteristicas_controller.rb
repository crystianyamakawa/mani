class CaracteristicasController < ApplicationController
  before_action :set_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /caracteristicas
  def index
    filter = ["0=0"]
    if params.has_key?("codigo_caracteristica")
        if !params[:codigo_caracteristica].blank?
        codigo_caracteristica = params[:codigo_caracteristica]
        filter << [ " codigo LIKE '%#{codigo_caracteristica}%'"]
      end
      if !params[:nome_caracteristica].blank?
        nome_caracteristica = params[:nome_caracteristica]
        filter << [ " descricao LIKE '%#{nome_caracteristica}%'"]
      end
    end


    @caracteristicas = Caracteristica.where(filter.join(" And ")).order("descricao ASC").paginate(:page => params[:page], :per_page =>8 )

  end

  # GET /caracteristicas/1
  def show
  end

  # GET /caracteristicas/new
  def new
    @caracteristica = Caracteristica.new
    @caracteristica.created_by = current_user.username
    @caracteristica.updated_by = current_user.username
  end

  # GET /caracteristicas/1/edit
  def edit
    @caracteristica.updated_by = current_user.username
  end

  # POST /caracteristicas
  def create
    @caracteristica = Caracteristica.new(caracteristica_params)

    if @caracteristica.save
      redirect_to @caracteristica, notice: 'Caracteristica criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /caracteristicas/1
  def update
    if @caracteristica.update(caracteristica_params)
      redirect_to @caracteristica, notice: 'Caracteristica alterada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /caracteristicas/1
  def destroy
    @caracteristica.destroy
    redirect_to caracteristicas_url, notice: 'Caracteristica eliminada com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristica
      @caracteristica = Caracteristica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def caracteristica_params
      params.require(:caracteristica).permit(:codigo, :descricao, :unidade, :created_by, :updated_by)
    end
end
