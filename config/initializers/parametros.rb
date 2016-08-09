NOME_EMPRESA = 'Empresa Xpto1'
FG_APP_CRM       = 1
FG_APP_COMERCIAL = 1
FG_APP_FINANCEIRO= 1

if Rails.env.production?
  AppPath = '/mani'
else
  AppPath = ''
end
