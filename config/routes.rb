Rails.application.routes.draw do

  get '/students', to: 'students#show'
end
