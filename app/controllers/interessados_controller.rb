class InteressadosController < ApplicationController
  before_action :set_interessado, only: [:show, :edit, :update, :destroy]

  # GET /interessados
  def index
    @interessados = Interessado.all
  end

  # GET /interessados/1
  def show
  end

  # GET /interessados/new
  def new
    @interessado = Interessado.new
  end

  # GET /interessados/1/edit
  def edit
  end

  # POST /interessados
  def create
    @interessado = Interessado.new(interessado_params)

    if @interessado.save
      redirect_to @interessado, notice: 'Interessado was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /interessados/1
  def update
    if @interessado.update(interessado_params)
      redirect_to @interessado, notice: 'Interessado was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /interessados/1
  def destroy
    @interessado.destroy
    redirect_to interessados_url, notice: 'Interessado was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interessado
      @interessado = Interessado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interessado_params
      params.require(:interessado).permit(:objeto_id, :objeto_type, :nm_contato, :tp_retorno, :ds_retorno, :interessado_id, :papel, :obs, :created_by, :updated_by)
    end
end
