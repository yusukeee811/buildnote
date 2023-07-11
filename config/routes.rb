Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

  devise_for :admins, skip: [:registrations, :passwords] , controllers: {
    sessions: 'admin/sessions'
  }

  scope module: :public do
    root to: 'homes#top'

    get 'users/:id/unsubscribe' => 'users#unsubscribe',        as: 'users_unsubscribe'
    patch 'users/:id/withdraw'  => 'users#withdraw',           as: 'users_withdraw'
    post 'users/guest_sign_in'  => 'users#create_guest',       as: 'create_guest'
    resources :users, only:[:show, :edit, :update] do
      get 'followings'          => 'relationships#followings', as: 'followings'
      get 'followers'           => 'relationships#followers',  as: 'followers'
      resource :relationships, only:[:create, :destroy]
      get 'user_search'         => 'searches#user_search',     as: 'user_search'
      resources :post_likes,    only:[:index]
    end

    resources :posts, only:[:index, :show, :new, :create, :destroy] do
      resource :post_likes,    only:[:create, :destroy]
      resources :post_comments, only:[:create, :destroy]
    end

    get 'posts/:post_hashtag/hashtag_search' => 'searches#hashtag_search',  as: 'hashtag_search'

    get 'trainings/graph'                    => 'trainings#graph',          as: 'trainings_graph'
    resources :trainings, only:[:index, :new, :create, :edit, :update, :destroy] do
      get 'training_search'                  => 'searches#training_search', as: 'training_search'
    end
  end

  namespace :admin do
    root to: 'homes#top'
    patch 'users/:id/withdraw'               => 'users#withdraw',           as: 'users_withdraw'
    resources :users, only:[:show, :edit, :update]
    resources :posts, only:[:index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
