ActiveAdmin.register Article do
  menu priority: 2

  permit_params :title, :description, :body, :category_ids, :image, :user_id

  index do
    selectable_column
    column :title
    column :description
    column :created_at
    actions
  end


  show do
    render partial: 'shared/articles/article'
  end

  form do |f|
    f.semantic_errors

    f.inputs do
      panel "Media", class: "media_panel" do
        f.file_field :image
      end
    end

    f.inputs do
      f.input :title, input_html: { size: 20 }
      f.input :description, input_html: { rows: 20 }
      f.input :user, label: 'Author', value: 'Valerie Trudell', include_blank: false
    end

    f.inputs do
      panel "Body", class: "body_panel" do
        f.rich_text_area :body, placeholder: 'Article part goes here', class: 'body_text_area'
      end
    end
    f.actions
  end
end
