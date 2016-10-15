json.extract! armamento, :id, :nome, :descricao, :poder_destruicao, :quantidade, :created_at, :updated_at
json.url armamento_url(armamento, format: :json)