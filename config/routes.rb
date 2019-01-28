Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # get :sysusers, to: 'app#sysusers'
      # get 'hello-world', to: 'app#hello_world'
      get '/:path', to: 'app#proxy'
      get '/:path/:id', to: 'app#proxy'
    end
  end
end
