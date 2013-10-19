LawyerSite::Application.routes.draw do
  root to: 'home#index'

  get :about,          to: 'home#about',          as: :about,          path: :sobre
  get :contact,        to: 'home#contact',        as: :contact,        path: :contact
  get :practice_areas, to: 'home#practice_areas', as: :practice_areas, path: :areas_de_atuacao
end
