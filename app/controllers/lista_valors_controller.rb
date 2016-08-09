class ListaValorsController < ApplicationController
          before_action :authenticate_user!
          before_action :set_lista_valor,:set_listas, only: [:show, :edit, :update, :destroy]

  # GET /lista_valors
  def index
    filter = ["0=0"]
    if params.has_key?("lista_valor")
      if !params[:lista_valor].blank?
        lista_valor = params[:lista_valor]
    filter << [" nm_lista = '#{lista_valor}'"]
  end
  if !params[:valor].blank?
    valor = params[:valor]
    filter << [ " valor LIKE '%#{valor}%'"]
  end

end
    @lista_valors = ListaValor.where(filter.join(" And ")).order("nm_lista, valor ASC").paginate(:page => params[:page], :per_page =>8 )
    set_listas
  end

  # GET /lista_valors/1
  def show
  end

  # GET /lista_valors/new
  def new
    @lista_valor = ListaValor.new
    @lista_valor.created_by = current_user.username
    @lista_valor.updated_by = current_user.username
    set_listas

  end

  # GET /lista_valors/1/edit
  def edit
    set_listas
  end

  # POST /lista_valors
  def create
    @lista_valor = ListaValor.new(lista_valor_params)
    if @lista_valor.save
      redirect_to @lista_valor, notice: 'Valor criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /lista_valors/1
  def update
    @lista_valor.updated_by = current_user.username
    if @lista_valor.update(lista_valor_params)
      redirect_to @lista_valor, notice: 'Valor atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /lista_valors/1
  def destroy
    @lista_valor.destroy
    redirect_to lista_valors_url, notice: 'Valor eliminado com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_valor
      @lista_valor = ListaValor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lista_valor_params
      params.require(:lista_valor).permit(:nm_lista, :valor, :created_by, :updated_by)
    end
    def set_listas
      @lista_valores = ["Tipo Componente","Tipo Estoque","Tipo Produto","Unidade Medida","Setor"]
  end
end
