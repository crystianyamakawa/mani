class CampanhasController < ApplicationController
  before_action :set_campanha, only: [:show, :edit, :update, :destroy]

  # GET /campanhas
  def index
    @campanhas = Campanha.all
  end

  # GET /campanhas/1
  def show
  end

  # GET /campanhas/new
  def new
    @campanha = Campanha.new
    3.times do
      oferta = @campanha.ofertas.build
      oferta.created_by = current_user.username
      oferta.updated_by = current_user.username
      3.times do
        of_prod = oferta.ofer_produtos.build
        of_prod.created_by = current_user.username
        of_prod.updated_by = current_user.username
      end
    end
    @campanha.created_by = current_user.username
    @campanha.updated_by = current_user.username
    set_listas
  end

  # GET /campanhas/1/edit
  def edit
    @campanha.updated_by = current_user.username
    set_listas
  end

  # POST /campanhas
  def create
    @campanha = Campanha.new(campanha_params)

    if @campanha.save
      redirect_to @campanha, notice: 'Campanha was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /campanhas/1
  def update
    if @campanha.update(campanha_params)
      redirect_to @campanha, notice: 'Campanha was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /campanhas/1
  def destroy
    @campanha.destroy
    redirect_to campanhas_url, notice: 'Campanha was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campanha
      @campanha = Campanha.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campanha_params
      params.require(:campanha).permit(:nm_campanha, :dt_inicio, :dt_termino, :vl_meta, :vl_atingido, :responsavel_id, :obs, :created_by, :updated_by,
                                       ofertas_attributes: [:id, :nm_oferta ,:campanha_id , :dt_inicio,:dt_termino, :vl_oferta, :vl_desconto,
                                                            :pc_desconto, :obs, :created_by, :updated_by, :created_at, :updated_at, :_destroy,
                                       ofer_produtos_attributes: [:id, :oferta_id, :produto_id, :vl_oferta, :obs, :created_by,
                                                                  :updated_by, :created_at, :updated_at, :_destroy]
                                                           ])
    end

    def set_listas
        @responsavel = User.order("first_name ASC")
        @produtos = Produto.order("descricao ASC")
    end
end
