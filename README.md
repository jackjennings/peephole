# Peephole

Adds a simple helper for Rails routing, scoped to the existence of any subdomain.

## Usage

The `for_tenant` method is available inside of the Rails routing block. All routes declared inside of the `for_tenant` block will only be accessible when accessing the application through a subdomain.

```ruby
Rails.application.routes.draw do

  with_tenant do
    # Buyer resource will only be available on subdomains
    resource :buyer, only: :show

    # Multiple roots require one to be named
    root to: 'buyers#show', as: :tenant_root
  end

  without_tenant do
    # News Posts resource will only be shown without a subdomain
    resources :news_posts
  end

  # Units will be accessible everywhere
  resources :units

  root to: 'units#index'

end
```
