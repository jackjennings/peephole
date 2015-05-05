Rails.application.routes.draw do
  for_tenant do
    # Multiple roots seem to require one to be named
    root to: 'buyers#show', as: :tenant_root
    resource :buyer, only: :show
  end

  without_tenant do
    resources :units
  end

  root to: 'units#index'
end
