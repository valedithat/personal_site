ActiveAdmin.register Article do
  menu priority: 2

  permit_params :title, :description, :body, :categories, category_attributes: [:name]


  index do
    selectable_column
    column :title
    column :description
    column :created_at
    actions
  end

  show as: :block do |record|
    div for: record do
      span record.user.name
      span record.created_at
      div record.description
      div record.body
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :body
    end

    f.inputs 'Categories' do
      f.input :categories, as: :select, collection: Category.select(:name).uniq
      f.object.categories.build
      f.semantic_fields_for :categories do |category|
          category.input :name
        end
    end

    f.actions
  end
end
