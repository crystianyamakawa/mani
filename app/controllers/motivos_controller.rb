class MotivosController < ApplicationController
  before_action :set_motivo,:setListas, only: [:show, :edit, :update, :destroy]

  # GET /motivos
  def index
    filter = ["0=0"]
    if params.has_key?("tp_motivo")
      if !params[:tp_motivo].blank?
        motivo_sup = params[:tp_motivo]
        filter << [ "motivo_sup.descricao =  '#{motivo_sup}'"]
      end
      if !params[:nome_motivo].blank?
        motivo = params[:nome_motivo]
        filter << [ "motivos.descricao LIKE  '%#{motivo}%'"]
      end
    end

    @motivos = Motivo.joins('LEFT OUTER JOIN motivos as motivo_sup ON motivo_sup.id = motivos.motivo_id').where(filter.join(" And ")).order("motivo_sup.descricao, motivos.descricao ASC").paginate(:page => params[:page], :per_page =>8 )
    setListas


  end

  # GET /motivos/1
  def show
  end

  # GET /motivos/new
  def new
    @motivo = Motivo.new
    @motivo.created_by = current_user.username
    @motivo.updated_by = current_user.username
    setListas
  end

  # GET /motivos/1/edit
  def edit
    @motivo.updated_by = current_user.username
    setListas
  end

  # POST /motivos
  def create
    @motivo = Motivo.new(motivo_params)

    if @motivo.save
      redirect_to @motivo, notice: 'Motivo criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /motivos/1
  def update
    if @motivo.update(motivo_params)
      redirect_to @motivo, notice: 'Motivo atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /motivos/1
  def destroy
    @motivo.destroy
    redirect_to motivos_url, notice: 'Motivo eliminado com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motivo
      @motivo = Motivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def motivo_params
      params.require(:motivo).permit(:descricao, :motivo_id, :setor_1, :prazo_1, :setor_2, :prazo_2, :setor_3, :prazo_3, :obs, :created_by, :updated_by)
    end
    def setListas
      @motivo_sup = Motivo.where(" motivo_id is null ").order("descricao ASC")
      @setor      = ListaValor.where("nm_lista = 'Setor'").order("valor ASC")

    end
end
