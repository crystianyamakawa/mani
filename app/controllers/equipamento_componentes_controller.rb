class EquipamentoComponentesController < ApplicationController
  before_action :set_equipamento_componente, only: [:show, :edit, :update, :destroy]

  # GET /equipamento_componentes
  def index
    @equipamento_componentes = EquipamentoComponente.all
  end

  # GET /equipamento_componentes/1
  def show
  end

  # GET /equipamento_componentes/new
  def new
    @equipamento_componente = EquipamentoComponente.new
  end

  # GET /equipamento_componentes/1/edit
  def edit
  end

  # POST /equipamento_componentes
  def create
    @equipamento_componente = EquipamentoComponente.new(equipamento_componente_params)

    if @equipamento_componente.save
      redirect_to @equipamento_componente, notice: 'Equipamento componente was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /equipamento_componentes/1
  def update
    if @equipamento_componente.update(equipamento_componente_params)
      redirect_to @equipamento_componente, notice: 'Equipamento componente was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /equipamento_componentes/1
  def destroy
    @equipamento_componente.destroy
    redirect_to equipamento_componentes_url, notice: 'Equipamento componente was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipamento_componente
      @equipamento_componente = EquipamentoComponente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def equipamento_componente_params
      params.require(:equipamento_componente).permit(:equipamento_id, :componente_id, :quantidade, :created_by, :updated_by)
    end
end
