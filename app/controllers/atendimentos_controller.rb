class AtendimentosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_atendimento,:set_listas, only: [:show, :edit, :update, :destroy]

  # GET /atendimentos
  def index
    filter = ["0=0"]
    if params.has_key?("protocolo")
      if !params[:protocolo].blank?
        protocolo = params[:protocolo]
        filter << [" nr_protocolo = '#{protocolo}'"]
      end
      if !params[:contato].blank?
        contato = params[:contato]
        filter << [ " nm_contato LIKE '%#{contato}%'"]
      end
      if !params[:status].blank?
        status = params[:status]
        filter << [ " status LIKE '%#{status}%'"]
      end
    end

    set_listas
    @atendimentos = Atendimento.where(filter.join(" And ")).order("nr_protocolo ASC").paginate(:page => params[:page], :per_page =>8 )

  end

  # GET /atendimentos/1
  def show
  end

  # GET /atendimentos/new
  def new
    @atendimento = Atendimento.new
    @atendimento.nr_protocolo = DateTime.now.strftime('%Y') + '/' + @atendimento.id.to_s.rjust(5, "0")
    @atendimento.created_by = current_user.username
    @atendimento.updated_by = current_user.username
    set_listas
  end

  # GET /atendimentos/1/edit
  def edit
    set_listas
    @atendimento.updated_by = current_user.username
  end

  # POST /atendimentos
  def create
    @atendimento = Atendimento.new(atendimento_params)

    if @atendimento.save
      redirect_to @atendimento, notice: 'Atendimento was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /atendimentos/1
  def update
    if @atendimento.update(atendimento_params)
      redirect_to @atendimento, notice: 'Atendimento was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /atendimentos/1
  def destroy
    @atendimento.destroy
    redirect_to atendimentos_url, notice: 'Atendimento was successfully destroyed.'
  end


  def update_submotivos
    @submotivos = Motivo.where("motivo_id = ?", params[:motivo_id])
    respond_to do |format|
        format.js
    end
  end

  def encaminhar_inbox
     inbox        = params[:inbox]
     atendimento  = params[:atendimento_id].to_i
     @notificacao = Inbox.new
     @notificacao.inbox = inbox
     @notificacao.objeto_descricao = 'Atendimento'
     @notificacao.objeto_type = 'Atendimento'
     @notificacao.objeto_id = atendimento
     @notificacao.fg_visivel = 1
     @notificacao.created_by = current_user.username
     @notificacao.updated_by = current_user.username
     @notificacao.save

  end

  def gerar_os
     @atendimento  = Atendimento.find(params[:id].to_i)
     ordem_servico = OrdemServico.new

     ordem_servico.nr_protocolo = 'OS' + DateTime.now.strftime('%Y%m') + '/0000'
     ordem_servico.nm_contato   = @atendimento.try(:nm_contato)
     ordem_servico.tp_retorno   = @atendimento.try(:tp_contato)
     ordem_servico.ds_retorno   = @atendimento.try(:ds_contato)
     ordem_servico.cliente_id   = @atendimento.try(:cliente_id)
     ordem_servico.status       = 'ABERTO'
     #ordem_servico.responsavel = @atendimento.nm_contato
     ordem_servico.equipamento_id = @atendimento.try(:equipamento_id)
     ordem_servico.rua          = @atendimento.try(:rua)
     ordem_servico.nr_endereco  = @atendimento.try(:nr_endereco)
     ordem_servico.bairro       = @atendimento.try(:bairro)
     ordem_servico.cidade       = @atendimento.try(:cidade)
     ordem_servico.cep          = @atendimento.try(:cep)
     ordem_servico.uf           = @atendimento.try(:uf)
     ordem_servico.lat          = @atendimento.try(:lat)
     ordem_servico.long         = @atendimento.try(:long)
     ordem_servico.atendimento_id = @atendimento.try(:id)
     ordem_servico.created_by = current_user.username
     ordem_servico.updated_by = current_user.username
     if ordem_servico.save
         @notificacao = Inbox.new
         @notificacao.inbox = 'OFICINA'
         @notificacao.objeto_descricao = 'Ordem Servico'
         @notificacao.objeto_type = 'OrdemServico'
         @notificacao.objeto_id = ordem_servico.id
         @notificacao.fg_visivel = 1
         @notificacao.created_by = current_user.username
         @notificacao.updated_by = current_user.username
         @notificacao.save
    end
    redirect_to ordem_servico, :target => "_blank"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def atendimento_params
      params.require(:atendimento).permit(:nr_protocolo, :nm_contato, :tp_retorno, :ds_retorno, :cliente_id, :atendimento_id, :motivo_id, :submotivo_id, :status, :equipamento_id, :rua, :nr_endereco, :bairro, :cidade, :cep, :uf, :lat, :long, :resolucao_id, :dt_fechamento, :obs, :created_by, :updated_by)
    end

    def set_listas
        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @motivos = Motivo.where(" motivo_id is null ").order("descricao ASC")
        @submotivos = Motivo.where(" motivo_id is not null ").order("descricao ASC")

        @clientes   = Cliente.order("nome ASC")
        @status     = ['ABERTO', 'EM PROCESSO', 'CANCELADO', 'FECHADO']
        @tp_retorno = ['TELEFONE', 'EMAIL', 'WHATS UP']
        @UFs = ["AC","AL","AM","AP","BA","CE","DF","ES","GO","MA","MG","MS","MT","PA","PB","PE",
              "PI","PR","RJ","RN","RO","RR","RS","SC","SE","SP","TO"]
    end
end
