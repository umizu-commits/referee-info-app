Rails.application.routes.draw do
  # すでに不要なので以下を削除
  # get 'referees/index'
  # get 'referees/show
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # ⚽ サッカー審判情報システムのルート設定
  root 'home#index'

  # 現状はindex/showのみ必要なので限定的にresourcesを追加
  resources :referees, only: [:index, :show, :new, :create]
  
  # 将来的な審判員関連ルート（コメントアウト）
  # resources :referees do
  #   member do
  #     get :schedule
  #     get :reports
  #   end
  # end
  # resources :matches
  # resources :reports
  
  # Defines the root path route ("/")
  # root "posts#index" ← この行はコメントアウトのまま残す
end
