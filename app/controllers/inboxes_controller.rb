class InboxesController < ApplicationController
  before_action :set_inbox, only: [:show, :edit, :update, :destroy]

  # GET /inboxes
  def index
    @inboxes = Inbox.where(" fg_visivel = 1 ")
  end

  # GET /inboxes/1
  def show
  end

  # GET /inboxes/new
  def new
    @inbox = Inbox.new
  end

  # GET /inboxes/1/edit
  def edit
  end

  # POST /inboxes
  def create
    @inbox = Inbox.new(inbox_params)

    if @inbox.save
      redirect_to @inbox, notice: 'Inbox was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /inboxes/1
  def update
    if @inbox.update(inbox_params)
      redirect_to @inbox, notice: 'Inbox was successfully updated.'
    else
      render :edit
    end
  end

  # PATCH/PUT /inboxes/1
  def done
    inbox = ""
    if params.has_key?("inbox")
        if !params[:inbox].blank?
          inbox = "/" + params[:inbox]
        end
    end
    set_inbox
    @inbox.fg_visivel = 0
    @inbox.updated_by = current_user.username
    @inbox.save
    redirect_to inboxes_url + inbox
  end

  # DELETE /inboxes/1
  def destroy
    @inbox.destroy
    redirect_to inboxes_url, notice: 'Inbox was successfully destroyed.'
  end

  def oficina
    @inboxes = Inbox.where("inbox = 'OFICINA' and fg_visivel = 1")
    render :oficina
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inbox
      @inbox = Inbox.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inbox_params
      params.require(:inbox).permit(:inbox, :objeto_descricao, :objeto_type, :objeto_id, :fg_visivel, :obs, :created_by, :updated_by)
    end
end
