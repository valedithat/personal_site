ActiveAdmin.register Project do

  menu priority: 3

  permit_params :title, :description, :link, :image

  index do
    selectable_column
    column :title
    column :link
    column :created_at
    actions
  end

  show do
    render partial: 'shared/projects/project', locals: { project: project }
  end

  form do |f|
    f.semantic_errors

    f.inputs do
      f.file_field :image
      f.input :title, input_html: { size: 20 }
      f.input :link, input_html: { size: 20 }
      f.input :description, input_html: { rows: 20 }
    end

    f.actions
  end
end
