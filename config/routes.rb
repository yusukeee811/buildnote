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

    get 'users/:name/unsubscribe'            => 'users#unsubscribe',        as: 'users_unsubscribe'
    get 'users/:name/withdraw'               => 'users#withdraw',           as: 'users_withdraw'
    resources :users, param: :name, only:[:show, :edit, :update] do
      get 'followings'                       => 'relationships#followings', as: 'followings'
      get 'followers'                        => 'relationships#followers',  as: 'followers'
      resources :relationships, only:[:create, :destroy]
      get 'user_search'                      => 'searches#user_search',     as: 'user_search'
      resources :post_likes, only:[:index]
    end

    resources :posts, only:[:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :post_likes, only:[:create, :destroy]
      resources :post_comments, only:[:create, :destroy]
    end

    get 'posts/:post_hashtag/hashtag_search' => 'searches#hashtag_search',  as: 'hashtag_search'

    resources :trainings, only:[:index, :new, :create, :edit, :update, :destroy] do
      get 'training_search'                  => 'searches#training_search', as: 'training_search'
    end
  end

  namespace :admin do
    root to: 'homes#top'
    get 'users/:name/withdraw'               => 'users#withdraw',           as: 'users_withdraw'
    resources :users, param: :name, only:[:show, :edit, :update]
    resources :posts, only:[:index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
