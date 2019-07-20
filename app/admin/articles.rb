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
      f.input :body, as: :text, input_html: { class: 'autogrow', rows: 50, cols: 50 }
    end

    # f.inputs do
    #   # f.input :categories, as: :select, collection: Category.select(:name).uniq
    #   # f.object.categories.build
    #
    #   # f.input :categories
    #
    #   f.input :article_categories, :as => :select, :collection => Category.all {|category| [category.name, category.id] }
    # end

    f.actions
  end
end
