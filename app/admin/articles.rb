ActiveAdmin.register Article do
  menu priority: 2

  permit_params :title, :description, :body, :category_ids

  index do
    selectable_column
    column :title
    column :description
    column :created_at
    actions
  end


  show do
    render partial: 'shared/article'
  end

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :title, input_html: { size: 20 }
      f.input :description, input_html: { rows: 20 }

      panel "Body", class: "body_panel" do
        f.rich_text_area :body, placeholder: 'Article part goes here', class: 'body_text_area'
      end
    end

    f.actions
  end
end
