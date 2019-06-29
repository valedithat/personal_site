require 'rails_helper'

describe 'Article' do
  let(:user) { users(:one) }

  describe 'GET index' do
    let(:path) { articles_path }

    it 'shows all articles' do
      visit path
      Article.all.each do |article|
        expect(page).to have_content article.title
        expect(page).to have_content article.description
      end
    end
  end

  describe 'GET show' do
    let(:article) { articles(:one) }
    let(:path) { article_path(article) }

    before { visit path }

    it 'displays article title' do
      expect(page).to have_content article.title
    end

    it 'displays article date' do
      expect(page).to have_content article.updated_at
    end

    it 'displays article author' do
      expect(page).to have_content article.user.name
    end

    it 'displays article body' do
      expect(page).to have_content article.body
    end

    xit 'displays article categories' do
      article.categories.each do |category|
        expect(page).to have_content category.name
      end
    end
  end
end
