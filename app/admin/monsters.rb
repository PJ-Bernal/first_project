ActiveAdmin.register Monster do

  permit_params :name, :size, :species, :description
  # permit_params do
  #   permitted = [:name, :size, :species, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
