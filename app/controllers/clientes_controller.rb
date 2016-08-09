class ClientesController < ApplicationController
    respond_to :json, :html
    before_action :authenticate_user!
    before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  def index
    filter = ["0=0"]

    if params.has_key?("nome")
      if !params[:nome].blank?
        nome = params[:nome]
        filter << [" nome like '%#{nome}%'"]
      end
      if !params[:cpf_cnpj].blank?
        doc = params[:cpf_cnpj]
        filter << [ "nr_cnpj_cpf like '%#{doc}%'"]
      end

    end

  @clientes = Cliente.where(filter.join(" And ")).paginate(:page => params[:page], :per_page =>8 )
  end

  # GET /clientes/1
  def show
    #@contratos = Cliente.find(params[:id]).contratos
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
    set_listas
  end

  # GET /clientes/1/edit
  def edit
    set_listas
    @cliente.updated_by = current_user.username
  end

  # POST /clientes
  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.created_by = current_user.username
    @cliente.updated_by = current_user.username

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente foi criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /clientes/1
  def update
    @cliente.updated_by = current_user.username
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: 'Cliente foi alterado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /clientes/1
  def destroy
    @cliente.destroy
    redirect_to clientes_url, notice: 'Cliente foi eliminado com sucesso.'
  end

  def pesquisa_clientes
    filter = ["0=0"]

    if params.has_key?("nome")
      if !params[:nome].blank?
        nome = params[:nome]
        filter << [" nome like '%#{nome}%'"]
      end
      if !params[:cpf].blank?
        doc = params[:cpf]
        filter << [ "nr_cpf like '%#{doc}%'"]
      end

      if !params[:cnpj].blank?
        doc = params[:cnpj]
        filter << [ "nr_cnpj like '%#{doc}%'"]
      end
    end

    @clientes = Cliente.select("id, nome, IFNULL(nr_cpf,'') as cpf, IFNULL(nr_cnpj,'') as cnpj").where(filter.join(" And ")).all
    render :json => @clientes.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cliente_params
      params.require(:cliente).permit(:nome, :tp_pessoa, :fg_cliente, :fg_fornecedor, :nr_cpf, :nr_cnpj, :nr_telefone, :nr_telefone2, :rua, :nr_endereco, :complemento, :bairro, :cidade, :uf, :cep, :created_by, :updated_by)
    end

    def set_listas
        @UFs = ["AC","AL","AM","AP","BA","CE","DF","ES","GO","MA","MG","MS","MT","PA","PB","PE",
              "PI","PR","RJ","RN","RO","RR","RS","SC","SE","SP","TO"]
        @tp_pessoa = ["Fisica","Juridica"]
    end
end
