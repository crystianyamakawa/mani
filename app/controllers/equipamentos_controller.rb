class EquipamentosController < ApplicationController

  before_action :authenticate_user!
  before_action :set_equipamento, :set_listas, only: [:show, :edit, :update, :destroy]

  # GET /equipamentos
  def index
    filter = ["0=0"]
    if params.has_key?("lista_valor")
      if !params[:tp_equipamento].blank?
        tp_equipamento = params[:tp_equipamento]
        filter << [" tipo = '#{tp_equipamento}'"]
      end
      if !params[:codigo_equipamento].blank?
        codigo_equipamento = params[:codigo_equipamento]
        filter << [ " codigo LIKE '%#{codigo_equipamento}%'"]
      end
      if !params[:nome_equipamento].blank?
        nome_equipamento = params[:nome_equipamento]
        filter << [ " descricao LIKE '%#{nome_equipamento}%'"]
      end

      if !params[:status].blank?
        status = params[:status]
        filter << [ " status LIKE '%#{status}%'"]
      end
    end

    set_listas
    @equipamentos = Equipamento.where(filter.join(" And ")).order("descricao ASC").paginate(:page => params[:page], :per_page =>8 )
  end

  # GET /equipamentos/1
  def show
    @componentes = @equipamento.componentes.all
    id = @equipamento.id
    @caracteristicas = EquipamentoComponente.select("co.descricao as Componente, ca.descricao as caracteristica, cc.valor as valor,
                                                     cc.unidade as unidade, cc.componente_id as componente_id ")
                                            .joins("JOIN componentes as co ON co.id = equipamento_componentes.componente_id
                                                    JOIN componente_caracteristicas as cc ON co.id = cc.componente_id
                                                    JOIN caracteristicas as ca ON ca.id = cc.caracteristica_id ")
                                            .where("equipamento_componentes.equipamento_id =#{id} ")
                                            .order("co.descricao, ca.descricao ASC")


  end

  # GET /equipamentos/new
  def new
    @equipamento = Equipamento.new
    @equipamento.created_by = current_user.username
    @equipamento.updated_by = current_user.username
    set_listas
  end

  # GET /equipamentos/1/edit
  def edit
    @equipamento.updated_by = current_user.username
  end

  # POST /equipamentos
  def create
    @equipamento = Equipamento.new(equipamento_params)

    if @equipamento.save
      redirect_to @equipamento, notice: 'Equipamento criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /equipamentos/1
  def update
    if @equipamento.update(equipamento_params)
      redirect_to @equipamento, notice: 'Equipamento atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /equipamentos/1
  def destroy
    @equipamento.destroy
    redirect_to equipamentos_url, notice: 'Equipamento eliminado com sucesso.'
  end

  def get_drop_down_options
    val = params[:category_id]
    #Use val to find records
    options = CategoriaProduto.all
    render :text => "{#{options.join(",")}}"
  end

  def pesquisa_equipamento
    filter = ["0=0"]

    if params.has_key?("codigo")
      if !params[:codigo].blank?
        codigo = params[:codigo]
        filter << [" codigo like '%#{codigo}%'"]
      end
      if !params[:descricao].blank?
        descricao = params[:descricao]
        filter << [ "descricao like '%#{descricao}%'"]
      end

      if !params[:tipo].blank?
        tipo = params[:tipo]
        filter << [ "tipo like '%#{tipo}%'"]
      end
    end

    @equipamentos = Equipamento.select("id, codigo, descricao, tipo").where(filter.join(" And ")).all
    render :json => @equipamentos.to_json
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipamento
      @equipamento = Equipamento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def equipamento_params
      params.require(:equipamento).permit(:codigo, :descricao, :tipo, :marca_id, :ds_modelo, :vl_aquisicao, :vl_venda, :vl_locacao, :unidade, :categoria_pai_id, :categoria_id, :estoque_id, :nr_patrimonio, :status, :obs, :created_by, :updated_by)
    end

    def set_listas
        @tp_equipamento = ListaValor.where("nm_lista = 'Tipo Equipamento'").order("valor ASC")
        @unidades   = ListaValor.where("nm_lista = 'Unidade Medida'").order("valor ASC")
        @marcas     = Marca.all
        #@categorias = CategoriaProduto.where("categoria_pai_id is null").order("nome ASC")
        @subcategorias = CategoriaProduto.select('concat(categoria_pai.nome, "|", categoria_produtos.nome)  as nome, categoria_produtos.id as id').joins('JOIN categoria_produtos as categoria_pai ON categoria_pai.id = categoria_produtos.categoria_pai_id').order("categoria_pai.nome, categoria_produtos.nome ASC")
        @estoques   = Estoque.all
        @status     = ['DISPONIVEL','EM USO', 'EM MANUTENCAO', 'SUCATA']
    end
end
