Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  get "/contactus", to: 'contacts#new', as: :contact_us
  post "/contactus", to: 'contacts#create'
end
