require 'rails_helper'

describe 'Article' do
  let(:user) { users(:one) }

  describe "GET index" do
    let(:path) { articles_path }

    it 'shows all articles' do
      visit path
      Article.all.each do |article|
        expect(page).to have_content article.title
        expect(page).to have_content article.description
      end
    end

    it 'displays title link to article show page' do
      article = articles(:one)
      visit path
      # expect(article.title).to have_link
      within(".article_#{article.id}") do
        click_on article.id
      end
      # expect(current_path.reload).to eq article_path(article)
    end
  end
end
