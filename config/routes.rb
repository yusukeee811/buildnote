Rails.application.routes.draw do
  namespace :admin do
    get 'posts/index'
  end
  namespace :admin do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/withdraw'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'searches/users'
    get 'searches/hashtags'
    get 'searches/trainings'
  end
  namespace :public do
    get 'trainings/index'
    get 'trainings/new'
    get 'trainings/create'
    get 'trainings/edit'
    get 'trainings/update'
    get 'trainings/destroy'
  end
  namespace :public do
    get 'post_comments/create'
    get 'post_comments/destroy'
  end
  namespace :public do
    get 'post_likes/index'
    get 'post_likes/create'
    get 'post_likes/destroy'
  end
  namespace :public do
    get 'posts/index'
    get 'posts/show'
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
  end
  namespace :public do
    get 'relationships/followings'
    get 'relationships/followers'
    get 'relationships/create'
    get 'relationships/destroy'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/confirm'
    get 'users/withdraw'
  end
  namespace :public do
    get 'homes/top'
  end
  devise_for :users, controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
    sessions: 'admin/sessions'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
