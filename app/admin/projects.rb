ActiveAdmin.register Project do

  menu priority: 3

  permit_params :title, :description, :link

  index do
    selectable_column
    column :title
    column :link
    column :created_at
    actions
  end

  show do
    render partial: 'shared/projects/project'
  end

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :title, input_html: { size: 20 }
      f.input :link, input_html: { size: 20 }
      f.input :description, input_html: { rows: 20 }
    end

    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
