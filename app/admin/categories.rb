ActiveAdmin.register Category do
  menu priority: 3

  permit_params :name

  index do
    actions
    column :name
    selectable_column

  end

  show do
    #show all articles written with this category
  end

  form do |f|
    f.inputs do
      f.input :name
    end

    f.actions
  end
end
