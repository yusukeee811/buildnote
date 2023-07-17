Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] , controllers: {
    sessions: 'admin/sessions'
  }

  scope module: :public do
    root to: 'homes#top'

    resources :users, only:[:show, :edit, :update] do
      get 'followings'       => 'relationships#followings', as: 'followings'
      get 'followers'        => 'relationships#followers',  as: 'followers'
      resource :relationships, only:[:create, :destroy]

      member do
        get 'unsubscribe'    => 'users#unsubscribe',        as: 'user_unsubscribe'
        patch 'withdraw'     => 'users#withdraw',           as: 'user_withdraw'
        get 'likes'          => 'users#likes',              as: 'user_post_likes'
      end

      collection do
        post 'guest_sign_in' => 'users#create_guest',       as: 'create_guest'
        get 'search'         => 'users#search',             as: 'user_search'
      end

    end

    resources :posts, only:[:index, :show, :new, :create, :destroy] do
      resource  :post_likes,    only:[:create, :destroy]
      resources :post_comments, only:[:create, :destroy]

      collection do
        get 'hashtag/:name' => 'posts#hashtag',  as: 'hashtag_post'
        get 'search' => 'hashtags#search',  as: 'hashtag_search'
      end
    end

    resources :trainings, only:[:index, :new, :create, :edit, :update, :destroy] do
      collection do
        get 'graph'           => 'trainings#graph',           as: 'training_graph'
        get 'search'          => 'trainings#search',          as: 'training_search'
      end
    end

  end

  namespace :admin do
    root to: 'homes#top'

    resources :users, only:[:show, :edit, :update] do
      member do
        patch 'withdraw' => 'users#withdraw', as: 'user_withdraw'
        get 'posts'      => 'users#posts',    as: 'user_posts'
      end
    end
    resources :posts, only:[:index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end