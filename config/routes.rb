Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root "todo_lists#index"
end

=begin
$ rake routes
                      Prefix Verb   URI Pattern                                                 Controller#Action
complete_todo_list_todo_item PATCH  /todo_lists/:todo_list_id/todo_items/:id/complete(.:format) todo_items#complete
        todo_list_todo_items GET    /todo_lists/:todo_list_id/todo_items(.:format)              todo_items#index
                             POST   /todo_lists/:todo_list_id/todo_items(.:format)              todo_items#create
     new_todo_list_todo_item GET    /todo_lists/:todo_list_id/todo_items/new(.:format)          todo_items#new
    edit_todo_list_todo_item GET    /todo_lists/:todo_list_id/todo_items/:id/edit(.:format)     todo_items#edit
         todo_list_todo_item GET    /todo_lists/:todo_list_id/todo_items/:id(.:format)          todo_items#show
                             PATCH  /todo_lists/:todo_list_id/todo_items/:id(.:format)          todo_items#update
                             PUT    /todo_lists/:todo_list_id/todo_items/:id(.:format)          todo_items#update
                             DELETE /todo_lists/:todo_list_id/todo_items/:id(.:format)          todo_items#destroy
                  todo_lists GET    /todo_lists(.:format)                                       todo_lists#index
                             POST   /todo_lists(.:format)                                       todo_lists#create
               new_todo_list GET    /todo_lists/new(.:format)                                   todo_lists#new
              edit_todo_list GET    /todo_lists/:id/edit(.:format)                              todo_lists#edit
                   todo_list GET    /todo_lists/:id(.:format)                                   todo_lists#show
                             PATCH  /todo_lists/:id(.:format)                                   todo_lists#update
                             PUT    /todo_lists/:id(.:format)                                   todo_lists#update
                             DELETE /todo_lists/:id(.:format)                                   todo_lists#destroy
                        root GET    /                                                           todo_lists#index
=end
