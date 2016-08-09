class AgendasController < ApplicationController
        before_action :authenticate_user!
        before_action :set_agenda, only: [:show, :edit, :update, :destroy]

  # GET /agendas
  def index
    @agendas = Agenda.all
  end

  # GET /agendas/1
  def show
  end

  # GET /agendas/new
  def new
    @agenda = Agenda.new
  end

  # GET /agendas/1/edit
  def edit
  end

  # POST /agendas
  def create
    @agenda = Agenda.new(agenda_params)

    if @agenda.save
      redirect_to @agenda, notice: 'Agenda was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agendas/1
  def update
    if @agenda.update(agenda_params)
      redirect_to @agenda, notice: 'Agenda was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agendas/1
  def destroy
    @agenda.destroy
    redirect_to agendas_url, notice: 'Agenda was successfully destroyed.'
  end

  ###############################################################################
  # Google Calendar
  def redirect
      google_api_client = Google::APIClient.new({
        application_name: 'Example Ruby application',
        application_version: '1.0.0'
      })

      google_api_client.authorization = Signet::OAuth2::Client.new({
        client_id: '1019637120727-2r0tm0enpuf73nmk0e7bc5rgl8fu9mhk.apps.googleusercontent.com',
        client_secret: 'MCuU_GyKTR2icByQXFYY_Zuz',
        authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
        scope: 'https://www.googleapis.com/auth/calendar.readonly',
        redirect_uri: url_for(:action => :callback)
      })

      authorization_uri = google_api_client.authorization.authorization_uri

      redirect_to authorization_uri.to_s
  end

  def callback
  google_api_client = Google::APIClient.new({
    application_name: 'Example Ruby application',
    application_version: '1.0.0'
  })

  google_api_client.authorization = Signet::OAuth2::Client.new({
    client_id: '1019637120727-2r0tm0enpuf73nmk0e7bc5rgl8fu9mhk.apps.googleusercontent.com',
    client_secret: 'MCuU_GyKTR2icByQXFYY_Zuz',
    token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
    redirect_uri: url_for(:action => :callback),
    code: params[:code]
  })

  response = google_api_client.authorization.fetch_access_token!

  session[:access_token] = response['access_token']

  redirect_to url_for(:action => :google_calendar)
end

##############################################################################
def google_calendar
  google_api_client = Google::APIClient.new({
    application_name: 'Example Ruby application',
    application_version: '1.0.0'
  })

  google_api_client.authorization = Signet::OAuth2::Client.new({
    client_id: '1019637120727-2r0tm0enpuf73nmk0e7bc5rgl8fu9mhk.apps.googleusercontent.com',
    client_secret: 'MCuU_GyKTR2icByQXFYY_Zuz',
    access_token: session[:access_token]
  })

  google_calendar_api = google_api_client.discovered_api('calendar', 'v3')

  response = google_api_client.execute({
    api_method: google_calendar_api.calendar_list.list,
    parameters: {}
  })

  response = google_api_client.execute({
    api_method: google_calendar_api.events.list,
    parameters: {
    :calendarId => 'primary',
    :singleEvents => true,
    :orderBy => 'startTime' }
    })

  @items = response.data['items']

end
  ###############################################################################
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agenda_params
      params.require(:agenda).permit(:nome, :created_by, :updated_by)
    end
end
