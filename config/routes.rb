Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '*path', to: 'frontend#index', constraints: ->(request) { !request.xhr? && request.format.html? }
end
