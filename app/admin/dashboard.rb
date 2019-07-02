ActiveAdmin.register_page "Dashboard" do
  menu priority: 1

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      panel "Articles" do
        div button_to 'New Article', new_admin_article_path, method: :get

        table_for Article.all do
          column :title
          column :description
          column :created_at
          column('Actions') { |article| link_to 'View', admin_article_path(article) }
        end
      end

      panel "Categories" do
        div button_to 'New Category', new_admin_category_path, method: :get

        table_for Category.all do
          column :name
          column('Actions') { |category| link_to 'View', admin_category_path(category) }
        end
      end
    end
  end
end
