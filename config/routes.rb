Rails.application.routes.draw do
  # Tell Devise to use your custom sessions controller
  devise_for :users,
    controllers: { sessions: 'users/sessions',
    registrations: 'users/registrations' },
    skip: [:passwords]

  # Your resource endpoints
  resources :users, only: %i[index show]
  resources :job_applications, only: %i[index show]
end
