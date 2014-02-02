MetrostlApi::Application.routes.draw do
  get ':stop1/:stop2/:delay', to: 'answers#show'
  root to: 'answers#index'
end
