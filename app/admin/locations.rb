ActiveAdmin.register Location do

  permit_params :zoneCount, :name, :file

  filter :zoneCount
  filter :name
  filter :monsters, as: :select, collection: proc { Monster.all }


  form do |f|
    f.inputs do
      f.input :zoneCount
      f.input :name
      f.input :file, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :zoneCount
      row :name
      row :file do |ad|
        link_to ad.file.filename, rails_blob_path(ad.file, disposition: 'attachment') if ad.file.attached?
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:zoneCount, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
