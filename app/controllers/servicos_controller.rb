class ServicosController < ApplicationController
  before_action :set_servico, only: [:show, :edit, :update, :destroy]

  # GET /servicos
  def index
    @servicos = Servico.all
  end

  # GET /servicos/1
  def show
  end

  # GET /servicos/new
  def new
    @servico = Servico.new
  end

  # GET /servicos/1/edit
  def edit
  end

  # POST /servicos
  def create
    @servico = Servico.new(servico_params)

    if @servico.save
      redirect_to @servico, notice: 'Servico was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /servicos/1
  def update
    if @servico.update(servico_params)
      redirect_to @servico, notice: 'Servico was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /servicos/1
  def destroy
    @servico.destroy
    redirect_to servicos_url, notice: 'Servico was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico
      @servico = Servico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servico_params
      params.require(:servico).permit(:descricao, :procedimento, :prazo, :vl_custo, :vl_cobranca, :obs, :created_by, :updated_by)
    end
end
