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

    resources :users, only:[:show, :edit, :update] do
      get 'followings'          => 'relationships#followings', as: 'followings'
      get 'followers'           => 'relationships#followers',  as: 'followers'
      resource :relationships, only:[:create, :destroy]
      get 'user_search'         => 'searches#user_search',     as: 'user_search'

      member do
        get 'unsubscribe'         => 'users#unsubscribe',        as: 'user_unsubscribe'
        patch 'withdraw'          => 'users#withdraw',           as: 'user_withdraw'
        get 'likes'               => 'users#likes',              as: 'user_post_likes'
      end

      collection do
        post 'guest_sign_in'      => 'users#create_guest',       as: 'create_guest'
      end

    end

    resources :posts, only:[:index, :show, :new, :create, :destroy] do
      resource  :post_likes,    only:[:create, :destroy]
      resources :post_comments, only:[:create, :destroy]
    end

    get 'posts/:post_hashtag/hashtag_search' => 'searches#hashtag_search',  as: 'hashtag_search'

    resources :trainings, only:[:index, :new, :create, :edit, :update, :destroy] do
      get 'training_search' => 'searches#training_search', as: 'training_search'
      
      collection do
        get 'graph'           => 'trainings#graph',          as: 'training_graph'
      end
      
    end
   
  end

  namespace :admin do
    root to: 'homes#top'

    resources :users, only:[:show, :edit, :update] do
      member do
        patch 'withdraw' => 'users#withdraw', as: 'user_withdraw'
      end
    end
    resources :posts, only:[:index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end