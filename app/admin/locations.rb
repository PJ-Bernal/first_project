ActiveAdmin.register Location do

  permit_params :zoneCount, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:zoneCount, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
