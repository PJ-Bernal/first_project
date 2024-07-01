ActiveAdmin.register MonstersLocation do


  permit_params :monster_id, :location_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:monster_id, :location_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
