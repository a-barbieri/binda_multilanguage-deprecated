Rails.application.routes.draw do
  mount Binda::Engine => '/admin_panel'
  mount BindaMultilanguage::Engine => "/binda_multilanguage"
end
