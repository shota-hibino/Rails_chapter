Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  # 'todolists#show'の設定を、todolistとして利用できる
  get 'todolists/:id' => 'todolists#show', as:'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
end
