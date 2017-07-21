BindaMultilanguage::Engine.routes.draw do
end

Binda::Engine.routes.draw do
  get 'foo', to: 'foo#index'
end