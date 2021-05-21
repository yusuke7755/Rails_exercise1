Rails.application.routes.draw do
  #get 'contacts/index'
  get '/contacts', to: 'contacts#index' #追記する
    # 追記する
    resources :contacts
end
