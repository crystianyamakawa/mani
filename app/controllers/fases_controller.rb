class FasesController < ApplicationController
  before_action :set_fase, only: [:show, :edit, :update, :destroy]

  # GET /fases
  def index
    @fases = Fase.all
  end

  # GET /fases/1
  def show
  end

  # GET /fases/new
  def new
    @fase = Fase.new
  end

  # GET /fases/1/edit
  def edit
  end

  # POST /fases
  def create
    @fase = Fase.new(fase_params)

    if @fase.save
      redirect_to @fase, notice: 'Fase was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fases/1
  def update
    if @fase.update(fase_params)
      redirect_to @fase, notice: 'Fase was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fases/1
  def destroy
    @fase.destroy
    redirect_to fases_url, notice: 'Fase was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fase
      @fase = Fase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fase_params
      params.require(:fase).permit(:nm_fase, :processo_venda_id, :nr_sequencia, :responsavel_id, :pc_processo, :obs, :created_by, :updated_by)
    end
end
