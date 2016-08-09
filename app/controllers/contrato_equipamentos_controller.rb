class ContratoEquipamentosController < ApplicationController
  before_action :set_contrato_equipamento, only: [:show, :edit, :update, :destroy]

  # GET /contrato_equipamentos
  def index
    @contrato_equipamentos = ContratoEquipamento.all
  end

  # GET /contrato_equipamentos/1
  def show
  end

  # GET /contrato_equipamentos/new
  def new
    @contrato_equipamento = ContratoEquipamento.new
  end

  # GET /contrato_equipamentos/1/edit
  def edit
  end

  # POST /contrato_equipamentos
  def create
    @contrato_equipamento = ContratoEquipamento.new(contrato_equipamento_params)

    if @contrato_equipamento.save
      redirect_to @contrato_equipamento, notice: 'Contrato equipamento was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contrato_equipamentos/1
  def update
    if @contrato_equipamento.update(contrato_equipamento_params)
      redirect_to @contrato_equipamento, notice: 'Contrato equipamento was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contrato_equipamentos/1
  def destroy
    @contrato_equipamento.destroy
    redirect_to contrato_equipamentos_url, notice: 'Contrato equipamento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato_equipamento
      @contrato_equipamento = ContratoEquipamento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contrato_equipamento_params
      params.require(:contrato_equipamento).permit(:contrato_id, :equipamento_id, :quantidade, :vl_tabela, :vl_negociado, :vl_locacao, :dt_inicio, :dt_termino, :created_by, :updated_by)
    end
end
