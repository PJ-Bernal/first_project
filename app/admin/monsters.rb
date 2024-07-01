# app/admin/monsters.rb
ActiveAdmin.register Monster do
  permit_params :name, :size, :species, :description, :file, location_ids: [], ailment_ids: []

  filter :name
  filter :size
  filter :species
  filter :description
  filter :locations, as: :select, collection: proc { Location.all }
  filter :ailments, as: :select, collection: proc { Ailment.all }

  index do
    id_column
    column :name
    column :image_url do |img|
      if img.file.present?
        image_tag url_for(img.file), style: 'max-width: 250px; margin:auto; display:block;'
      else
        'No image uploaded'
      end
    end 
    column :created_at
    column :updated_at
    column :locations, as: :select, collection: proc { Location.all }
    column :ailments, as: :select, collection: proc { Ailment.all }
    actions
  end


  form do |f|
    f.inputs do
      f.input :name
      f.input :size
      f.input :species
      f.input :description
      f.input :locations, as: :check_boxes, collection: Location.all
      f.input :ailments, as: :check_boxes, collection: Ailment.all
      f.input :file, as: :file
    end
    f.actions
  end

  show do |monster|
    attributes_table do
      row :name
      row :size
      row :species
      row :description
      row :locations, as: :select, collection: proc { Location.all }
      row :ailments, as: :select, collection: proc { Ailment.all }
      row :'download the image' do |ad|
        if monster.file.attached?
          link_to ad.file.filename, rails_blob_path(ad.file, disposition: 'attachment') if ad.file.attached?
        else
          'No image has been uploaded'
        end
      end
      row :file do |ad|
        if monster.file.attached?
          image_tag url_for(ad.file), style: 'max-width: 400px; margin:auto; display:block;'
        else
          'No image has been uploaded'
        end
      end
    end
  end
end
