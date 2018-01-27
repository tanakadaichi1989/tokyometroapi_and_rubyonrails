Rails.application.routes.draw do
  get '/timetable' => 'timetables#top'
  
  post '/timetable' => 'timetables#search'

  get '/' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
