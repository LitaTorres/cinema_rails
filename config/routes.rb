Rails.application.routes.draw do
  get 'pages/index'
  get 'documentary_films/index'
  get 'documentary_films/create'
  get 'documentary_films/new'
  get 'series/index'
  get 'series/create'
  get 'series/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"

  #Agregando rutas para el método post
  post "movies/create" => "movies#create"
  post "series/create" => "series#create"
  post "documentary_films/create" => "documentary_films#create"

 # get "/formulario/respuestadocumentales", to: "documentaryfilms#index"
 # get "/formulariodocumentales", to: "documentaryfilms#new"
 # get "/formulario/respuestaseries", to: "series#index"
 # get "/formularioseries", to: "series#new"
 # get '/formulario/respuestapeliculas', to: "moviess#index"
 # get '/formulariopeliculas', to: "movies#new"
end
