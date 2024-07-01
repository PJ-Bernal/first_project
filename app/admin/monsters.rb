# app/admin/monsters.rb
ActiveAdmin.register Monster do
  permit_params :name, :size, :species, :description
end
