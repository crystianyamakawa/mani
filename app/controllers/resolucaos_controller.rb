class ResolucaosController < ApplicationController
  before_action :set_resolucao, only: [:show, :edit, :update, :destroy]

  # GET /resolucaos
  def index
    @resolucaos = Resolucao.all
  end

  # GET /resolucaos/1
  def show
  end

  # GET /resolucaos/new
  def new
    @resolucao = Resolucao.new
  end

  # GET /resolucaos/1/edit
  def edit
  end

  # POST /resolucaos
  def create
    @resolucao = Resolucao.new(resolucao_params)

    if @resolucao.save
      redirect_to @resolucao, notice: 'Resolucao was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resolucaos/1
  def update
    if @resolucao.update(resolucao_params)
      redirect_to @resolucao, notice: 'Resolucao was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resolucaos/1
  def destroy
    @resolucao.destroy
    redirect_to resolucaos_url, notice: 'Resolucao was successfully destroyed.'
  end

  def pesquisa_resolucao
    filter = ["0=0"]

    if params.has_key?("descricao")
      if !params[:descricao].blank?
        descricao = params[:descricao]
        filter << [ "descricao like '%#{descricao}%'"]
      end
    end

    @resolucao = Resolucao.select("id, descricao, obs_resolucao").where(filter.join(" And ")).all
    render :json => @resolucao.to_json
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolucao
      @resolucao = Resolucao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resolucao_params
      params.require(:resolucao).permit(:descricao, :status_final, :obs_resolucao, :created_by, :updated_by)
    end
end
