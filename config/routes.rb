LawyerSite::Application.routes.draw do
  root to: 'home#index'

  get  :about,              to: 'home#about',              as: :about,          path: :sobre
  get  :social,             to: 'home#social',             as: :social,         path: :acao_social
  get  :contact,            to: 'home#contact',            as: :contact,        path: :contato
  get  :practice_areas,     to: 'home#practice_areas',     as: :practice_areas, path: :areas_de_atuacao
  post :send_contact_email, to: 'home#send_contact_email', as: :send_contact_email
end
