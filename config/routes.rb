Rails.application.routes.draw do

    resources :topics do
    resources :posts, :sponsored_posts, expect: [:index]

  end
  
  get 'about' => 'welcome#about'

 root 'welcome#index'
end
