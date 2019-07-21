ActiveAdmin.register Category do
  menu priority: 3

  permit_params :name

  index do
    actions
    column :name
    selectable_column
  end

  show as: :block do |record|
    div for: record do
      record.articles.each do |article|
        div article.title
        div article.description
      end
    end
  end

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :name
    end

    f.actions
  end
end
