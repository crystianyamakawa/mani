class ComponenteCaracteristicasController < ApplicationController
  before_action :set_componente_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /componente_caracteristicas
  def index
    @componente_caracteristicas = ComponenteCaracteristica.all
  end

  # GET /componente_caracteristicas/1
  def show
  end

  # GET /componente_caracteristicas/new
  def new
    @componente_caracteristica = ComponenteCaracteristica.new
    @componente_caracteristica.created_by = current_user.username
    @componente_caracteristica.updated_by = current_user.username
    set_listas
  end

  # GET /componente_caracteristicas/1/edit
  def edit
    @componente_caracteristica.updated_by = current_user.username
    set_listas
  end

  # POST /componente_caracteristicas
  def create
    @componente_caracteristica = ComponenteCaracteristica.new(componente_caracteristica_params)
    @componente_caracteristica.created_by = current_user.username
    @componente_caracteristica.updated_by = current_user.username

    if @componente_caracteristica.save
      redirect_to @componente_caracteristica, notice: 'Componente caracteristica was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /componente_caracteristicas/1
  def update
    if @componente_caracteristica.update(componente_caracteristica_params)
      redirect_to @componente_caracteristica, notice: 'Componente caracteristica was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /componente_caracteristicas/1
  def destroy
    @componente_caracteristica.destroy
    redirect_to componente_caracteristicas_url, notice: 'Componente caracteristica was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente_caracteristica
      @componente_caracteristica = ComponenteCaracteristica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def componente_caracteristica_params
      params.require(:componente_caracteristica).permit(:componente_id, :caracteristica_id, :valor, :unidade, :created_by, :updated_by)
    end
    def set_listas
        @caracteristicas = Caracteristica.order("descricao ASC")
    end
end
