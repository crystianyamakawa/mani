class SistemaParametrosController < ApplicationController
        before_action :authenticate_user!
        before_action :set_sistema_parametro, only: [:show, :edit, :update, :destroy]

  # GET /sistema_parametros
  def index
    @sistema_parametros = SistemaParametro.all
  end

  # GET /sistema_parametros/1
  def show
  end

  # GET /sistema_parametros/new
  def new
    @sistema_parametro = SistemaParametro.new
  end

  # GET /sistema_parametros/1/edit
  def edit
  end

  # POST /sistema_parametros
  def create
    @sistema_parametro = SistemaParametro.new(sistema_parametro_params)

    if @sistema_parametro.save
      redirect_to @sistema_parametro, notice: 'Sistema parametro was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sistema_parametros/1
  def update
    if @sistema_parametro.update(sistema_parametro_params)
      redirect_to @sistema_parametro, notice: 'Sistema parametro was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sistema_parametros/1
  def destroy
    @sistema_parametro.destroy
    redirect_to sistema_parametros_url, notice: 'Sistema parametro was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sistema_parametro
      @sistema_parametro = SistemaParametro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sistema_parametro_params
      params.require(:sistema_parametro).permit(:nome_empresa, :fg_app_locacao, :fg_app_comercial, :fg_app_crm, :created_by, :updated_by)
    end
end
