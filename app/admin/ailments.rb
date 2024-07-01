ActiveAdmin.register Ailment do

  permit_params :name, :description

  def self.ransackable_associations(auth_object = nil)
    ["monsters", "monsters_ailments"]
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
