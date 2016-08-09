Rails.application.routes.draw do

  resources :answers
  resources :questions
  resources :surveys
  resources :ofer_produtos
  resources :oferta
  resources :campanhas
  resources :etapa_situacaos
  resources :etapas
  resources :fases
  resources :processo_vendas
  resources :interessados
  resources :opp_produtos
  resources :oportunidades
  resources :servicos
  resources :ordem_servico_itens
  resources :ordem_servicos
  resources :inboxes do
    collection do
      get :done, :oficina
    end
  end
  resources :resolucaos do
    collection do
      get :pesquisa_resolucao
    end
  end

  resources :motivos
  resources :atendimentos do
    collection do
      get :combo_sub_motivo, :update_submotivos, :encaminhar_inbox, :gerar_os
    end
  end
  resources :contrato_equipamentos
  resources :componente_caracteristicas
  resources :equipamento_componentes
  resources :componentes
  resources :equipamentos do
    collection do
      get :pesquisa_equipamento
    end
  end

  resources :caracteristicas
  resources :contrato_produtos
  resources :fin_conta
  resources :fin_movimentos do
    collection do
       post :faturamento
        get :fluxo_caixa,:realizar_movimento, :graficos, :verificar_saldo
    end
  end
  resources :despesas do
    collection do
      get :gerar_saida
    end
  end
  resources :contratos do
   collection do
      get :print, :atualiza_vl_negociado, :lista_produtos, :gerar_faturamento,
          :faturamento, :lista_entradas
      end
   end
  resources :clientes do
    collection do
        get :pesquisa_clientes
    end
  end

  resources :lista_valors
  resources :sistema_parametros
  resources :produto_componentes
  resources :produtos do
    collection do
      get :get_drop_down_options
    end
  end
  resources :estoques
  resources :categoria_produtos
  resources :marcas
  resources :fechamento_caixas
  resources :agendas do
    collection do
      get :google_calendar,:redirect, :callback
    end
  end
  devise_for :users

  get "categoria_produtos/:categoria_pai_id:/subcategorias" => "application#subcategorias", :as => "subcategorias", :format => :json

  root 'app#index'
  match ':controller(/:action(/:id))', :via => [:get, :post]

end

####################################################
