Rails.application.routes.draw do
  post 'Invoice', to: "invoice#create"
  root "invoice#index"
end
