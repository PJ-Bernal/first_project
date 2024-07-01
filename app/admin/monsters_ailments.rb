ActiveAdmin.register MonstersAilment do

  permit_params :monster_id, :ailment_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:monster_id, :ailment_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
