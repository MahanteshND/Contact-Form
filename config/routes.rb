Rails.application.routes.draw do
  root  to: "contacts#index"
  scope "/:locale" do
    resources :contacts
  end
end
