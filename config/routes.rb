BindaMultilanguage::Engine.routes.draw do
  namespace :binda do
    resources :languages
  end
end

Binda::Engine.routes.draw do
  get 'foo', to: 'foo#index'
end