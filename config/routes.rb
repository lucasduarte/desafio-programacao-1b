Rails.application.routes.draw do
  root 'vendas#index'
  post 'vendas/upload', to: 'vendas#upload'
end
