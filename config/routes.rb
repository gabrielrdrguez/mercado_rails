Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  resources :gerentes
  resources :funcionarios
  resources :vendas
  resources :item_pedidos
  resources :produtos
  resources :estoques
  resources :estoque_produtos
end
