# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160803201308) do

  create_table "agendas", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.string   "content",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "atendimentos", force: :cascade do |t|
    t.string   "nr_protocolo",   limit: 255
    t.string   "nm_contato",     limit: 255
    t.string   "tp_retorno",     limit: 255
    t.string   "ds_retorno",     limit: 255
    t.integer  "cliente_id",     limit: 4
    t.integer  "atendimento_id", limit: 4
    t.integer  "motivo_id",      limit: 4
    t.integer  "submotivo_id",   limit: 4
    t.string   "status",         limit: 255
    t.integer  "equipamento_id", limit: 4
    t.string   "rua",            limit: 255
    t.string   "nr_endereco",    limit: 255
    t.string   "bairro",         limit: 255
    t.string   "cidade",         limit: 255
    t.string   "cep",            limit: 255
    t.string   "uf",             limit: 255
    t.string   "lat",            limit: 255
    t.string   "long",           limit: 255
    t.integer  "resolucao_id",   limit: 4
    t.date     "dt_fechamento"
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "campanhas", force: :cascade do |t|
    t.string   "nm_campanha",    limit: 255
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.float    "vl_meta",        limit: 24
    t.float    "vl_atingido",    limit: 24
    t.integer  "responsavel_id", limit: 4
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "caracteristicas", force: :cascade do |t|
    t.string   "codigo",     limit: 255
    t.string   "descricao",  limit: 255
    t.string   "unidade",    limit: 255
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categoria_produtos", force: :cascade do |t|
    t.string   "nome",             limit: 255
    t.integer  "categoria_pai_id", limit: 4
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",             limit: 255
    t.string   "nr_telefone",      limit: 255
    t.string   "nr_telefone2",     limit: 255
    t.string   "contato",          limit: 255
    t.boolean  "fg_cliente"
    t.boolean  "fg_fornecedor"
    t.string   "tp_pessoa",        limit: 255
    t.string   "nr_cpf",           limit: 255
    t.string   "nr_insc_estadual", limit: 255
    t.string   "rua",              limit: 255
    t.string   "nr_endereco",      limit: 255
    t.string   "bairro",           limit: 255
    t.string   "cidade",           limit: 255
    t.string   "cep",              limit: 255
    t.string   "uf",               limit: 255
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "nr_cnpj",          limit: 255
    t.string   "complemento",      limit: 255
  end

  create_table "componente_caracteristicas", force: :cascade do |t|
    t.integer  "componente_id",     limit: 4
    t.integer  "caracteristica_id", limit: 4
    t.string   "valor",             limit: 255
    t.string   "unidade",           limit: 255
    t.string   "created_by",        limit: 255
    t.string   "updated_by",        limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "componentes", force: :cascade do |t|
    t.string   "codigo",           limit: 255
    t.string   "descricao",        limit: 255
    t.string   "tipo",             limit: 255
    t.integer  "marca_id",         limit: 4
    t.string   "ds_modelo",        limit: 255
    t.float    "vl_aquisicao",     limit: 24
    t.float    "vl_venda",         limit: 24
    t.float    "vl_locacao",       limit: 24
    t.string   "unidade",          limit: 255
    t.integer  "categoria_pai_id", limit: 4
    t.integer  "categoria_id",     limit: 4
    t.integer  "estoque_id",       limit: 4
    t.string   "nr_patrimonio",    limit: 255
    t.string   "status",           limit: 255
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "contrato_equipamentos", force: :cascade do |t|
    t.integer  "contrato_id",    limit: 4
    t.integer  "equipamento_id", limit: 4
    t.integer  "quantidade",     limit: 4
    t.float    "vl_tabela",      limit: 24
    t.float    "vl_negociado",   limit: 24
    t.float    "vl_locacao",     limit: 24
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "contrato_produtos", force: :cascade do |t|
    t.integer  "contrato_id",  limit: 4
    t.integer  "produto_id",   limit: 4
    t.integer  "quantidade",   limit: 4
    t.float    "vl_tabela",    limit: 24
    t.float    "vl_negociado", limit: 24
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.string   "descricao",    limit: 255
    t.integer  "cliente_id",   limit: 4
    t.string   "tp_evento",    limit: 255
    t.date     "dt_evento"
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.string   "status",       limit: 255
    t.float    "vl_negociado", limit: 24
    t.text     "obs",          limit: 65535
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.string   "nome",          limit: 255
    t.integer  "fornecedor_id", limit: 4
    t.float    "vl_despesa",    limit: 24
    t.string   "status",        limit: 255
    t.text     "obs",           limit: 65535
    t.string   "created_by",    limit: 255
    t.string   "updated_by",    limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "tp_despesa",    limit: 255
    t.integer  "contrato_id",   limit: 4
    t.date     "dt_executado"
    t.float    "vl_executado",  limit: 24
  end

  create_table "equipamento_componentes", force: :cascade do |t|
    t.integer  "equipamento_id", limit: 4
    t.integer  "componente_id",  limit: 4
    t.float    "quantidade",     limit: 24
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "equipamentos", force: :cascade do |t|
    t.string   "codigo",           limit: 255
    t.string   "descricao",        limit: 255
    t.string   "tipo",             limit: 255
    t.integer  "marca_id",         limit: 4
    t.string   "ds_modelo",        limit: 255
    t.float    "vl_aquisicao",     limit: 24
    t.float    "vl_venda",         limit: 24
    t.float    "vl_locacao",       limit: 24
    t.string   "unidade",          limit: 255
    t.integer  "categoria_pai_id", limit: 4
    t.integer  "categoria_id",     limit: 4
    t.integer  "estoque_id",       limit: 4
    t.string   "nr_patrimonio",    limit: 255
    t.string   "status",           limit: 255
    t.text     "obs",              limit: 65535
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "tipo",       limit: 255
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "etapa_situacaos", force: :cascade do |t|
    t.integer  "etapa_id",    limit: 4
    t.string   "nm_situacao", limit: 255
    t.string   "created_by",  limit: 255
    t.string   "updated_by",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "etapas", force: :cascade do |t|
    t.integer  "fase_id",        limit: 4
    t.string   "nm_etapa",       limit: 255
    t.integer  "nr_sequencia",   limit: 4
    t.integer  "responsavel_id", limit: 4
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "fases", force: :cascade do |t|
    t.string   "nm_fase",        limit: 255
    t.integer  "nr_sequencia",   limit: 4
    t.integer  "responsavel_id", limit: 4
    t.float    "pc_processo",    limit: 24
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "fechamento_caixas", force: :cascade do |t|
    t.date     "periodo"
    t.integer  "fin_conta_id", limit: 4
    t.float    "vl_saldo",     limit: 24
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "fin_conta", force: :cascade do |t|
    t.string   "banco",                limit: 255
    t.string   "nm_banco",             limit: 255
    t.string   "agencia",              limit: 255
    t.string   "nm_agencia",           limit: 255
    t.string   "conta",                limit: 255
    t.string   "nm_titular",           limit: 255
    t.string   "nr_documento_titular", limit: 255
    t.float    "saldo",                limit: 24
    t.string   "status",               limit: 255
    t.text     "obs",                  limit: 65535
    t.string   "created_by",           limit: 255
    t.string   "updated_by",           limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "descricao",            limit: 255
  end

  create_table "fin_movimentos", force: :cascade do |t|
    t.string   "tp_movimento",  limit: 255
    t.string   "descricao",     limit: 255
    t.float    "valor",         limit: 24
    t.string   "status",        limit: 255
    t.string   "motivo_status", limit: 255
    t.date     "dt_previsto"
    t.date     "dt_executado"
    t.integer  "contrato_id",   limit: 4
    t.integer  "fin_conta_id",  limit: 4
    t.integer  "despesa_id",    limit: 4
    t.text     "obs",           limit: 65535
    t.string   "created_by",    limit: 255
    t.string   "updated_by",    limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome",         limit: 255
    t.string   "nr_telefone",  limit: 255
    t.string   "nr_telefone2", limit: 255
    t.string   "contato",      limit: 255
    t.string   "rua",          limit: 255
    t.string   "nr_endereco",  limit: 255
    t.string   "bairro",       limit: 255
    t.string   "cidade",       limit: 255
    t.string   "cep",          limit: 255
    t.string   "uf",           limit: 255
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "inboxes", force: :cascade do |t|
    t.string   "inbox",            limit: 255
    t.string   "objeto_descricao", limit: 255
    t.string   "objeto_type",      limit: 255
    t.integer  "objeto_id",        limit: 4
    t.boolean  "fg_visivel"
    t.text     "obs",              limit: 65535
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "interessados", force: :cascade do |t|
    t.integer  "objeto_id",      limit: 4
    t.string   "objeto_type",    limit: 255
    t.string   "nm_contato",     limit: 255
    t.string   "tp_retorno",     limit: 255
    t.string   "ds_retorno",     limit: 255
    t.integer  "interessado_id", limit: 4
    t.string   "papel",          limit: 255
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "lista_valors", force: :cascade do |t|
    t.string   "nm_lista",   limit: 255
    t.string   "valor",      limit: 255
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "motivos", force: :cascade do |t|
    t.string   "descricao",  limit: 255
    t.integer  "motivo_id",  limit: 4
    t.string   "setor_1",    limit: 255
    t.integer  "prazo_1",    limit: 4
    t.string   "setor_2",    limit: 255
    t.integer  "prazo_2",    limit: 4
    t.string   "setor_3",    limit: 255
    t.integer  "prazo_3",    limit: 4
    t.text     "obs",        limit: 65535
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ofer_produtos", force: :cascade do |t|
    t.integer  "oferta_id",  limit: 4
    t.integer  "produto_id", limit: 4
    t.float    "vl_oferta",  limit: 24
    t.text     "obs",        limit: 65535
    t.string   "created_by", limit: 255
    t.string   "updated_by", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.string   "nm_oferta",   limit: 255
    t.integer  "campanha_id", limit: 4
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.float    "vl_oferta",   limit: 24
    t.float    "vl_desconto", limit: 24
    t.float    "pc_desconto", limit: 24
    t.text     "obs",         limit: 65535
    t.string   "created_by",  limit: 255
    t.string   "updated_by",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "oportunidades", force: :cascade do |t|
    t.string   "nm_contato",          limit: 255
    t.string   "tp_retorno",          limit: 255
    t.string   "ds_retorno",          limit: 255
    t.integer  "cliente_id",          limit: 4
    t.integer  "processo_venda_id",   limit: 4
    t.integer  "campanha_id",         limit: 4
    t.integer  "oferta_id",           limit: 4
    t.integer  "fase_id",             limit: 4
    t.integer  "etapa_id",            limit: 4
    t.integer  "situacao_etapa",      limit: 4
    t.string   "status",              limit: 255
    t.string   "resultado",           limit: 255
    t.integer  "motivo_resultado_id", limit: 4
    t.float    "pc_evolucao",         limit: 24
    t.float    "pc_sucesso",          limit: 24
    t.integer  "responsavel_id",      limit: 4
    t.text     "obs",                 limit: 65535
    t.string   "created_by",          limit: 255
    t.string   "updated_by",          limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "opp_produtos", force: :cascade do |t|
    t.integer  "oportunidade_id", limit: 4
    t.integer  "produto_id",      limit: 4
    t.float    "vl_negociado",    limit: 24
    t.integer  "prazo_entrega",   limit: 4
    t.datetime "dt_entrega"
    t.text     "obs",             limit: 65535
    t.string   "created_by",      limit: 255
    t.string   "updated_by",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "ordem_servico_itens", force: :cascade do |t|
    t.integer  "ordem_servico_id", limit: 4
    t.integer  "servico_id",       limit: 4
    t.integer  "fornecedor_id",    limit: 4
    t.string   "status",           limit: 255
    t.text     "obs",              limit: 65535
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "ordem_servicos", force: :cascade do |t|
    t.string   "nr_protocolo",   limit: 255
    t.string   "nm_contato",     limit: 255
    t.string   "tp_retorno",     limit: 255
    t.string   "ds_retorno",     limit: 255
    t.integer  "cliente_id",     limit: 4
    t.integer  "atendimento_id", limit: 4
    t.string   "status",         limit: 255
    t.string   "responsavel",    limit: 255
    t.integer  "equipamento_id", limit: 4
    t.string   "rua",            limit: 255
    t.string   "nr_endereco",    limit: 255
    t.string   "bairro",         limit: 255
    t.string   "cidade",         limit: 255
    t.string   "cep",            limit: 255
    t.string   "uf",             limit: 255
    t.string   "lat",            limit: 255
    t.string   "long",           limit: 255
    t.date     "dt_fechamento"
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "processo_vendas", force: :cascade do |t|
    t.string   "nm_processo",    limit: 255
    t.integer  "responsavel_id", limit: 4
    t.text     "obs",            limit: 65535
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "produto_componentes", force: :cascade do |t|
    t.string   "produto_pai_id", limit: 255
    t.integer  "produto_id",     limit: 4
    t.float    "quantidade",     limit: 24
    t.float    "vl_custo",       limit: 24
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "tipo",             limit: 255
    t.string   "codigo",           limit: 255
    t.string   "descricao",        limit: 255
    t.integer  "marca_id",         limit: 4
    t.string   "modelo",           limit: 255
    t.float    "vl_custo",         limit: 24
    t.float    "vl_venda",         limit: 24
    t.string   "unidade",          limit: 255
    t.integer  "categoria_pai_id", limit: 4
    t.integer  "categoria_id",     limit: 4
    t.integer  "estoque_id",       limit: 4
    t.string   "ean",              limit: 255
    t.string   "ncm",              limit: 255
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id",  limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "resolucaos", force: :cascade do |t|
    t.string   "descricao",     limit: 255
    t.string   "status_final",  limit: 255
    t.text     "obs_resolucao", limit: 65535
    t.string   "created_by",    limit: 255
    t.string   "updated_by",    limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "descricao",    limit: 255
    t.text     "procedimento", limit: 65535
    t.integer  "prazo",        limit: 4
    t.float    "vl_custo",     limit: 24
    t.float    "vl_cobranca",  limit: 24
    t.text     "obs",          limit: 65535
    t.string   "created_by",   limit: 255
    t.string   "updated_by",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sistema_parametros", force: :cascade do |t|
    t.string   "nome_empresa",     limit: 255
    t.boolean  "fg_app_locacao"
    t.boolean  "fg_app_comercial"
    t.boolean  "fg_app_crm"
    t.string   "created_by",       limit: 255
    t.string   "updated_by",       limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             limit: 25
    t.string   "last_name",              limit: 50
    t.string   "username",               limit: 25,  default: "", null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
