Rails.application.routes.draw do
  post 'Invoice', to: "invoice#create"
  
  resources :invoices do
    get 'approve', to: "invoice#approve"
  end
  
  root "invoice#index"
end
